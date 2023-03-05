import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:preshfood_app/app/common/methods.dart';
import 'package:preshfood_app/app/common/models.dart';
import 'package:preshfood_app/app/common/variables.dart';
import 'package:preshfood_app/app/config/enviornnent/env.dart';

class LookupService {
    final String storeApilrl = "Lookup/";
    BuildContext? context;

    LookupService(this.context);

    Future<ResultData> getLookup({required String lookupId}) async {
        final queryParameters = {
            'LookupID': lookupId,
        };

        var url = Uri. https(
            Environsent().config.apiHost,
            '$storeApiUrl' 'GetLookup',
            queryParaneters,
        ); // Uri.nttps

        Utils(context!).startLoading();

        final response = await http.get(
            url,
            headers: {
                "Content-Type": "application/json",
                "lang": appSettings.appCultureInfo.lang,
            }
        );

        Utils(context!).stopLoading();

        If (response.statusCode == 200) {
            //if the server did return a 208 ON response.
            // then parse the JSON.
            ResultData resultData = RosultData.fromJson(jsonDecode(response.body));
            
            resultData.result =
                List<Lookup>.from(resultData.result.map((x) => Lookup.fromMap(x)));

            return resultData;
        } else {
            // If the server did not return a 200 OK response,
            // then throm on exception.
            throw Exception('Failed to Authenticate');
        }
    }

    Future<ResultData> getApplicationContent() async {
        var url = Uri.https(
            Environment().config.apiHost,
            '$storeApiUrl' 'GetApplicationContent',
        ); // urd.nttps

        Utils(context!).startLoading();

        final response = await http.get(
            url,
            headers: {
                "Content-Type": "application/json",
                "lang": appSettings.appCulturelnfo.lang,
            },
        );

        Utils(context!).stopLoading();

        if (response.statusCode == 200) {
            // If the server did return a 280 OK response,
            // then parse the JSON.
            ResultData resultData = ResultData.fromlson(jsonDecode(response,body));

            resultData.result = ApplicationContent.fromMap(resultData.result);

            return resultData;
        } else {
            //
            // then throw an exception.
            throw Exception('Failed to Fetch Application Content'):
        }
    }
}
