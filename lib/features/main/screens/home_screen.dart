
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newecommerce/core/constants/app_radius.dart';
import 'package:newecommerce/core/constants/app_sizes.dart';
import 'package:newecommerce/core/constants/app_spacing.dart';
import 'package:newecommerce/core/extensions/context_extensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final List<String> products = [];



    return Scaffold(
        body: ListView(
          children: [
            Padding(
                padding: EdgeInsets.only(
                  left: AppSpacing.md,
                  right: AppSpacing.md,
                  top: context.statusBarHeight + AppSpacing.md,
                  bottom: AppSpacing.xl,
                ),
                child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/images/png/avatar_placeholder.png'),
                          ),
                          SizedBox(
                            width: AppSpacing.md,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Good Morning',
                                  style: context.textTheme.bodySmall,),
                                Text('Janaka Eranda',
                                    style: context.textTheme.titleMedium)
                              ],
                            ),
                          ),
                          IconButton(
                              onPressed: null,
                              icon: Icon(Icons.notifications))
                        ],
                      ),
                      SizedBox(height: AppSpacing.md,),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          prefixIconConstraints: BoxConstraints.tightFor(
                              width: AppSizes.inputHeight,
                              height: AppSizes.inputHeight
                          ),
                          prefixIcon: Center(
                            child: SvgPicture.asset('assets/icons/search.svg',
                              width: AppSizes.iconSm,
                              height: AppSizes.iconSm,
                            ),
                          ),
                          suffixIconConstraints: BoxConstraints.tightFor(
                              width: AppSizes.inputHeight,
                              height: AppSizes.inputHeight
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(AppSpacing.xs),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: context.colors.primary,
                                borderRadius: BorderRadius.circular(AppRadius.xs),
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/icons/filter.svg',
                                  width: AppSizes.iconSm,
                                  height: AppSizes.iconSm,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: AppSpacing.md,),
                      Container(
                        height: 154,
                        decoration: BoxDecoration(
                            color: context.colors.primary,
                            borderRadius: BorderRadius.circular(AppRadius.card)
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 154,
                                child: Column(
                                  children: [
                                    Text('Get Special Offer'),
                                    Text('Up to 40%'),
                                    Spacer(),
                                    ElevatedButton(
                                        onPressed: null,
                                        child: Text('Shop Now')
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            Image.asset('assets/images/png/sale_banner.png', width: 120,)
                          ],
                        ),
                      ),
                      SizedBox(height: AppSpacing.md,),
                      GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 10,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: AppSpacing.md,
                              mainAxisSpacing: AppSpacing.md,
                              mainAxisExtent: 100
                          ),
                          itemBuilder: ( context , index ) => Container(
                            height: 100,
                            width: 100,
                            color: Colors.red,
                            child: Text('A'),
                          )

                      )

                    ],
                ),
            )
          ],
        )
    );
  }
}
