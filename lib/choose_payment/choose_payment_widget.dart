import '../book_in_house_cash/book_in_house_cash_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class ChoosePaymentWidget extends StatefulWidget {
  ChoosePaymentWidget({Key key}) : super(key: key);

  @override
  _ChoosePaymentWidgetState createState() => _ChoosePaymentWidgetState();
}

class _ChoosePaymentWidgetState extends State<ChoosePaymentWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Stack(
          children: [
            Image.network(
              'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxATEBAQDxAQEA8PDw0PEA0PDw8ODw8PFhIXFxYSFhYZHikhGRsmHBYWIjIiJiosLy8vGCE1OjUtOSkuLywBCgoKDg0OGxAQGy4mICYsLi4uMC4uLiwuLC4uLi4uLi4uNC4uLi4uLi4uLjAuLi4uLjAuLi4uLDAuLi8vLi4uLv/AABEIAOEA4QMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAAAQIDBAUGB//EAD4QAAIBAgIFCgQEBQMFAAAAAAABAgMRBDEFEiFBUQYTUmFxgZGhscEiMkLRQ1Ny8BQjgrLhYpLSFRY0Y6P/xAAaAQEAAgMBAAAAAAAAAAAAAAAAAQIDBAUG/8QANBEAAgECAwYFAwIGAwAAAAAAAAECAxEEEjEFIUFhkbFRcYGhwRPR8OHxBiIjMkKSFDNT/9oADAMBAAIRAxEAPwD7iAAAAAAAAAAAAAAAAAAAEAAAAAAAAUbBNity4KXLIglMkAAkAAAAAAAAAAAAAAAAAAAAAFSxSTBV6C4uRci5axW5a5ZGO5aLIJT3lwAQWAAANHF4uFNXm83ZRSblJ8Elma8dJyf4ckuuUNbwTt5nLr1XKtUk90pU4Loxi7bO1pvwNqmcCrtapKrKNPck7aa21fl4fqbscJFRWbe9fLkdSjiVLqfB5m1HI4qf76zrYapeKfUjq4TE/Xhd6rX10f52salSn9OduDMwANogAAAAAAAAAAAAAAAAAAEEsqCCSlRljnaXxnNw1rXk2owj0pvJdm/uInOMIuUnZLexllNqMdXuM+IxEIq85RiuMmkjWjpai8prttJLxasefjFylr1Hrze95R6orcjcgecl/EEpS/pwVud7+1re5vrZ8Uv5pNvla3um/X2O/Tqpq6aaeTTumZqbzODQlqu62ces6+Dq3T7jt4TGQxMLpWa1XyaNSk6U7PR6P4NoEA2iLkggAHmsRQcas+E5SnF8dZ3fm2Z6Z2MTh1NWZoPBSWW08/W2TONWUqVmm27Xta+968L6fje5HFrLaeq9zDc6mCjaCNehgne8vA30jqYPDOhF5nvfTd+7uatSp9SV1oiwANsqAACQAAAAAAAAAAAAAQAGQSyCSrB53lHtqU1ujCpPvbS9L+J6I42nsO2ozjnHWj/TK134peZztrU51MFUjDW1+jTfsjYwclGtFvmuqaXuzkQNmBrQM8GeIonXmbEDcwUrS7bHP5xLa2kuLdi1HSdKMryqRy3PW9D0ey5KFXNJpKzvd2Xvzsc7FRlKFopt3Wiv25HowcmOncP+au+M16o2aOOpz+WpCXVGSb8D0MK1Oo7Qkn5NPsac6dSCvOLXmmu5ukFFMlSMtjGmi4K3LEEgAAEokhAFiQAQSAAAAAAAAAAAAQwGAQQyCWQSVYKTjdFzUx+MhSg5zdkt2+T3JdYclFZm7JEKLk7JXucnSWEjBOd1GKzTy7vscCrpGcnq0k9uxO15PsRNevVxVS72RWS+mmvdnUweFhTVorbvk/mZ4fFzo1azlQjlXfnbReXXeehpU3Qhaq80vDgvPi/U51LRVSe2rO3VfXl9kb1LQ9FZpy/VJ+1jeRa5EKUeKIniKj428txgWj6H5dPwKy0VQf0W64ykvczyZkUkZskHuaXQx/VqLepPqzDSpVYfJWcl0K3xruktqN7D467UZxdOfBu6l+mWT9eowpkSinsaujoYfGVaXG68H8Ph25GrVpRqarf4rd18e/M6sZmRM5tGpbY33s26dQ9DSqwqwzQ/Pz9VuOZJODyyNkFUyxcklEkIkgsSACCwAAAAAAAAAAABDIJZAKshlbl2Y2WKsiTPEaYxssRW1YP+XFtR4dc3+8rHoeUmM5uhKztKf8td+b8LnnNE0bR1nnLL9J5vb+McbUI8d7+F89Dr7MpKMXXeui+X8dToYakoRUY5LzfFmxExQMsTgUzYmXciEUM1NG1Eo9xFi2qxMyIzpFGzGmZURqli63FWwZKczGDawuIdCpm4cfL7rVGCvS+pG3HgdCnMzpnPozNyEj075HKjIzoFYlihmJRJCJILIAAEgAAAAAAAAEMglkElWVkUbLyMUiyMcjyvK+blUo010dbvlKy/tIpRsklkkkjHp/bi4dSh5bTLE8BteV8bPz7JL4PR0FbDU0vC/V3M0DLExQM8TFSKyKmWmzmrHTlrSjSbjFyTkprdnssbWHrKcVOOT8UbNOSYnTklv+H2NmZkRzpaQXOqlbgte+xSauom3XruMXKMdZxV9W+fHcZ4yW9mOUJKyfE2Aab0jDmee3W2K+3nOh++02KMm4pyjqtq7jfLquXUk9PMrKEo6rjb1MhJALFBF2ZvUZHPlu7TcoM9PgpOWHjfy6O3wcWustaS9equb0SxSGRczMyLQlEkIkgugAASAAAAAAAAAQypMiCSktSsjFIyyyMUiyMcjyvKKFsTSlulFLvvJe6JgbfKej8EaqzpTTf6Xb3SNOmzwm3KThjpN/5JNdu6Z6DBzU8NB+F10f2aM8DPEwQM0TWpFpHMwOHqSjU1ampF1KqcVBXeV3c6MYQo0v8ATTi3tzbz82y1ClGN1FWTbk883vL1qMZrVmrxdtl2vQ2YRsuYqVM0t+np+XOHqzdJ/wAqrryqc9zltl9zXVY7GEq68IzX1Lbbc968TNJZdgw9CMFaC1Ve9rvMyQhlfoKtZTWm+/7nKp4aP8U47dWK55Q+nnLpZHai7mCdCKnr2+Jx1dbblwMtMyQjlv5lKlTPZ8rFySCTIYSlR5GzQNSb+LsNygenwMcuGjzu+rbOJiJXry6exvU8i5SnkXM5kWhZEkRyJKmRAAAkAAAAAAAAArIqWkVLIo9SJZGNlpPYUZKMUtTWxVJSjKMtqldPsZ5yjFwbpy+am7X6UPpl4eh6eZzNIYbWanH543X6ob4v2OVtjZ7xVJOH98dOa4r7dOJtYHFKjJxl/bL2fB/D9HwNSBliYqbM0TyFM7MidYypmHVJTNuLMbRkmZEYbk3MyZVotNk00RGNzIkXRDJFwa9epd6q7/sbOGw8q9RQXryRr4isqUMz9ObLUtrvxOhRRp0Im/TPVOyVlocOF9WbMMixSD2E3KG2tDLHIkiORJQyIAAEgAAAAAAAAFZ5GJsyVMjBKRZGOWpM5bDC5lMTXUYuUnZJXbPOYrS85u0Pgjx3vv3dxqYzH0cJG9R73olq/sub9zFI79avGPzSt4HPraTp7nrdz9zhrbte18XtZdI87W/iOvL/AKoKPneT+F3KG1PHq99Sy3yvtv2G5Skmrp3RytS5kheO2Lt53OXLE1K9R1Kj3vjZLsl77/Fm1QxcqSyy3rt+nJnXROqjSpY3pK3XmjbhXg8pezNqDOlDEU5/2y+CZIyKKCa6is60Vm0l12RlRdySRlJOfW0rTXy3m+pOK8WczFY2pU2P4Y9GO/te8rOvCPM06mNpQ0d3y++hv4vSsU9WFpPfLcvuY8Pi4b5JdzOdCkVqT3LvZOG2vXoXUFGz1un3TTOXUnKtLNL9j1GGmmrpprjdM3ITPFU5OLvF2fG+06mD0u00qm1dNZo7WG27RqSy1Vlfjquu63ZeJK3HqIT2FlI0qdbYjNCZ2jMjdg9hcxUnsMiKsyrQkAEEgAAAAAAgkqwClV7DUqSM+IlZGhOdySjV2czlJiFGg2/l1qab7ZJHBpvhlxOnyuV8JV6nSf8A9InhcJjqlP5XddGW2P8Ag8rt2jnxCa1yruzHOG89dEyxRw8Np2D+eMovivij9zqYfHUpfLUg+pvVfg9p5+VOcdUUszfii+qUgZokxYsV5sjmTYiizsldm3CViHFGrKkkrs06kXJ+iNyo7v0RXUMVbEue5aFPpo1FSMsaRsahpYrEfTHvfsjDG8nZEqKRSvV+mPe/YwpAw1cdSjnOPYnrPyM6jZWRKRsGKtNRTcnZLNs52I03H8OLfXLYvBf4OVicVOo7zd+EVsiu4KhKWu4tlZ9A0Ni3KjCW561uxSaXkjsUah5/k1/49Lsl/czuwR76i/6cfJdkZsu7cdOhLYjYizTw8tiNqDMjLrQyAgkgkAAAAAAFJFikgDSx07JdckvJmqZdL/J/Uvc51LEtbHtXHeTbcRczYmkpRcZJOMk008mnuPD6W5M1INyo3qQ6P1x/5Huo1E8n3bxOnc18RhqddWmvXiGrnyacGnaSaazTTTXcD6bitHwmrThGS/1JO3YcevyXoP5Yyh2SuvCVzkVNkVE/5JJ+d12uiuVnjKdaUfllKP6ZOPobVPS+IWVafe1L1OzV5Jv6avdKHumak+TOIWTg+yUl6mpLZ2I4w7P5K5WYYcosUvxE+2nT9kZJcpcS83D/AGf5MUtAYlfh37Jw+5jehcT+VLxj9zBLBVNHTf8Aq/sRZmx/3JiP/X/sf3KvlFiOMF/QYP8Ao+I/Kl5fclaFxP5UvGH3Kf8ABl/5v/Vixepp3EtW5yyfCEF52NOWNqv8SXc7ehuw0BiX+Gl2zh7Mzw5M13m4L+qTfkZoYCt/jTfS3ewyvwONKbebb7W2QekpclH9VXuUPds6GH5M0VmpT7ZbPBWNmGzMRLVJebXxctlZ4yEHJ2inJvdFNvwR3NGcnZyalW+CPQ+qXbw9T1uGwEIK0IxiuEUkbdOgb9DZdOLvUeblovuy2Qw4SiopJKySSSWSS3G4ijqRjv7ltNarXb2ZLhxOskTc62DndX636m7E5ujvkXf6s6VMPUkyokhEkAAAAAAAFJFyrANDSFFyg0s9jXXbccI9ROJoYrBRltyfFe5ZMho4xeNWS3vv2marg5rddcV9jXaLalTMsS96T8iyxEd6fkzWAsibmzzkP2mT8HFGqCMqFzZ1I8V4onmo8V4o1SCMozG1zK6iOajxXijXsQMozGzqR4rxRPwcUawJyi5sc5Dt7iOfW5P0MAGVC5leIe5JeZSVRvNsqSlwJsQQSkZqWEk89i68/A6GGwij1viyHJE2L4KlqxSee/v2m/BGKnEzxRQsWRJBIAAAAAAAIJABVoxyiZSLAGtKmYalBPNJ9qubziVcQDlzwEOFuxmKWjuEn3q513Aq6ZN2RY4ssBLc15oo8HPgvE7jplebGZixxHhZ9HzRX+Gn0X5Hc5oc0TmFjhfw8+iyf4afRfkdzmhzQzEZTiLCz6Pmi6wc+rxOxzRKpDMybHIWAlva82ZY6P4t9ysdNUyypkZmLHOhgYrdftZsQoJZJLsVjaVMsoEEmCNMyxgZFEskAVUS6BIAAAAAAAAAAAAAIYAAIYABBAABAAAIAABAQABIQABKJQABKJQABKAABIAAAAAAAAP/2Q==',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment(0, -0.2),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      duration: Duration(milliseconds: 1000),
                      reverseDuration: Duration(milliseconds: 1000),
                      child: BookInHouseCashWidget(),
                    ),
                  );
                },
                text: 'Cash',
                options: FFButtonOptions(
                  width: 200,
                  height: 40,
                  color: Color(0x80FFA600),
                  textStyle: FlutterFlowTheme.title3.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 0.15),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Card',
                options: FFButtonOptions(
                  width: 200,
                  height: 40,
                  color: Color(0x80FFA600),
                  textStyle: FlutterFlowTheme.title3.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.tertiaryColor,
                  ),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
              ),
            ),
            Align(
              alignment: Alignment(0.02, -0.76),
              child: Text(
                'Choose Payment Method',
                style: FlutterFlowTheme.title3.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFFFFA600),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
