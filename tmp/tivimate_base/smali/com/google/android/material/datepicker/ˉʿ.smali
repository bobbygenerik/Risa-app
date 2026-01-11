.class public final synthetic Lcom/google/android/material/datepicker/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/datepicker/ˉʿ;->ʾˋ:I

    iput-object p2, p0, Lcom/google/android/material/datepicker/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 20

    .prologue
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/material/datepicker/ˉʿ;->ʾˋ:I

    const/16 v2, 0x1d

    const/4 v3, 0x3

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/google/android/material/datepicker/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v8, Lᵔʻ/ˈـ;

    sget-object v1, Lᵔʻ/ˈـ;->ˎˏ:[Lᐧˆ/ˈ;

    iget-object v1, v8, Lˑʼ/ᴵᵔ;->ᴵˑ:Lˑʼ/ᴵᵔ;

    instance-of v2, v1, Lᵔʻ/ﾞˏ;

    if-eqz v2, :cond_0

    check-cast v1, Lᵔʻ/ﾞˏ;

    goto :goto_0

    :cond_0
    move-object v1, v5

    :goto_0
    const/16 v2, 0xe

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lᵔʻ/ﾞˏ;->ᐧⁱ()Z

    move-result v9

    if-ne v9, v6, :cond_5

    sget-boolean v5, Lʿˋ/ˋᵔ;->ʽ:Z

    if-eqz v5, :cond_1

    goto/16 :goto_3

    :cond_1
    iget v5, v1, Lᵔʻ/ﾞˏ;->ᵢˋ:I

    invoke-virtual {v1, v5}, Lᵔʻ/ﾞˏ;->ᐧˏ(I)Lᵔʻ/ˈـ;

    move-result-object v5

    if-nez v5, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v1}, Lᵔʻ/ﾞˏ;->ˊـ()Lـˈ/ˑﹳ;

    move-result-object v8

    iget-object v8, v8, Lـˈ/ˑﹳ;->ﾞʻ:Lar/tvplayer/tv/base/ui/view/FloatingMenu;

    const-string v9, ""

    invoke-virtual {v8, v9}, Lar/tvplayer/tv/base/ui/view/FloatingMenu;->setHeader(Ljava/lang/String;)V

    invoke-virtual {v1}, Lᵔʻ/ﾞˏ;->ˊـ()Lـˈ/ˑﹳ;

    move-result-object v8

    iget-object v8, v8, Lـˈ/ˑﹳ;->ﾞʻ:Lar/tvplayer/tv/base/ui/view/FloatingMenu;

    new-instance v9, Lʻـ/ˈ;

    const v10, 0x7f13019a

    invoke-virtual {v1, v10}, Lˑʼ/ᴵᵔ;->ᐧᴵ(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v6}, Lᵔʻ/ﾞˏ;->ᵢﹳ(I)Z

    move-result v11

    invoke-direct {v9, v6, v10, v11}, Lʻـ/ˈ;-><init>(ILjava/lang/String;Z)V

    new-instance v10, Lʻـ/ˈ;

    const v11, 0x7f1301bd

    invoke-virtual {v1, v11}, Lˑʼ/ᴵᵔ;->ᐧᴵ(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Lᵔʻ/ﾞˏ;->ᵢﹳ(I)Z

    move-result v13

    invoke-direct {v10, v12, v11, v13}, Lʻـ/ˈ;-><init>(ILjava/lang/String;Z)V

    new-instance v11, Lʻـ/ˈ;

    const v13, 0x7f13019f

    invoke-virtual {v1, v13}, Lˑʼ/ᴵᵔ;->ᐧᴵ(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v3}, Lᵔʻ/ﾞˏ;->ᵢﹳ(I)Z

    move-result v14

    invoke-direct {v11, v3, v13, v14}, Lʻـ/ˈ;-><init>(ILjava/lang/String;Z)V

    new-instance v13, Lʻـ/ˈ;

    invoke-virtual {v5}, Lᵔʻ/ˈـ;->ⁱᵎ()Z

    move-result v14

    if-eqz v14, :cond_3

    const v14, 0x7f1301b4

    invoke-virtual {v1, v14}, Lˑʼ/ᴵᵔ;->ᐧᴵ(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    :cond_3
    const v14, 0x7f1301b7

    invoke-virtual {v1, v14}, Lˑʼ/ᴵᵔ;->ᐧᴵ(I)Ljava/lang/String;

    move-result-object v14

    :goto_1
    const/4 v15, 0x4

    move/from16 p1, v12

    invoke-virtual {v1, v15}, Lᵔʻ/ﾞˏ;->ᵢﹳ(I)Z

    move-result v12

    invoke-direct {v13, v15, v14, v12}, Lʻـ/ˈ;-><init>(ILjava/lang/String;Z)V

    new-instance v12, Lʻـ/ˈ;

    iget v5, v5, Lˑʼ/ᴵᵔ;->ˉـ:I

    iget v14, v1, Lᵔʻ/ﾞˏ;->ˋـ:I

    if-ne v5, v14, :cond_4

    const v5, 0x7f1301ba

    invoke-virtual {v1, v5}, Lˑʼ/ᴵᵔ;->ᐧᴵ(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    const v5, 0x7f1301ab

    invoke-virtual {v1, v5}, Lˑʼ/ᴵᵔ;->ᐧᴵ(I)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v1, v4}, Lᵔʻ/ﾞˏ;->ᵢﹳ(I)Z

    move-result v14

    invoke-direct {v12, v4, v5, v14}, Lʻـ/ˈ;-><init>(ILjava/lang/String;Z)V

    new-instance v5, Lʻـ/ˈ;

    const v14, 0x7f1301ad

    invoke-virtual {v1, v14}, Lˑʼ/ᴵᵔ;->ᐧᴵ(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v16, v4

    const/4 v4, 0x6

    move/from16 v17, v15

    invoke-virtual {v1, v4}, Lᵔʻ/ﾞˏ;->ᵢﹳ(I)Z

    move-result v15

    invoke-direct {v5, v4, v14, v15}, Lʻـ/ˈ;-><init>(ILjava/lang/String;Z)V

    new-instance v14, Lʻـ/ˈ;

    const v15, 0x7f1301bc

    invoke-virtual {v1, v15}, Lˑʼ/ᴵᵔ;->ᐧᴵ(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v18, v4

    const/4 v4, 0x7

    move/from16 v19, v3

    invoke-virtual {v1, v4}, Lᵔʻ/ﾞˏ;->ᵢﹳ(I)Z

    move-result v3

    invoke-direct {v14, v4, v15, v3}, Lʻـ/ˈ;-><init>(ILjava/lang/String;Z)V

    new-array v3, v4, [Lʻـ/ˈ;

    aput-object v9, v3, v7

    aput-object v10, v3, v6

    aput-object v11, v3, p1

    aput-object v13, v3, v19

    aput-object v12, v3, v17

    aput-object v5, v3, v16

    aput-object v14, v3, v18

    invoke-static {v3}, Lﹶˈ/ٴﹶ;->ʿ([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v8, v3}, Lar/tvplayer/tv/base/ui/view/FloatingMenu;->setItems(Ljava/util/List;)V

    invoke-virtual {v1}, Lᵔʻ/ﾞˏ;->ˊـ()Lـˈ/ˑﹳ;

    move-result-object v3

    iget-object v3, v3, Lـˈ/ˑﹳ;->ﾞʻ:Lar/tvplayer/tv/base/ui/view/FloatingMenu;

    new-instance v4, Lᐧᵎ/ˆʾ;

    invoke-direct {v4, v2, v1}, Lᐧᵎ/ˆʾ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Lar/tvplayer/tv/base/ui/view/FloatingMenu;->setOnItemClickedListener(Lᴵⁱ/ﾞʻ;)V

    invoke-virtual {v1, v6}, Lᵔʻ/ﾞˏ;->ﾞי(Z)V

    goto :goto_3

    :cond_5
    iget-boolean v1, v8, Lᵔʻ/ˈـ;->ˎـ:Z

    if-eqz v1, :cond_6

    invoke-virtual {v8, v7}, Lᵔʻ/ˈـ;->ʿי(Z)V

    goto :goto_3

    :cond_6
    invoke-virtual {v8}, Lᵔʻ/ˈـ;->ʼﾞ()Lـˈ/ⁱˊ;

    move-result-object v1

    iget-object v1, v1, Lـˈ/ⁱˊ;->ˉʿ:Lar/tvplayer/tv/base/ui/view/CustomTextView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v8, v6}, Lᵔʻ/ˈـ;->ˎˊ(Z)V

    invoke-virtual {v8}, Lˑʼ/ᴵᵔ;->ˉـ()Lˑʼ/ʿ;

    move-result-object v9

    const/4 v13, 0x0

    const/16 v14, 0x18

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lˉᵎ/ⁱˊ;->ᵔי(Lˑʼ/ʿ;ZIZLandroid/os/Bundle;I)V

    goto :goto_3

    :cond_7
    sget-object v1, Lﾞ/ᵎﹶ;->ᴵˊ:Lﾞ/ᵎﹶ;

    invoke-virtual {v1}, Lﾞ/ᵎﹶ;->ᐧˉ()I

    move-result v1

    invoke-static {v8, v1, v5, v2}, Lᵔʻ/ˈـ;->ᵢـ(Lᵔʻ/ˈـ;ILandroid/view/KeyEvent;I)Z

    :goto_3
    return-void

    :pswitch_0
    check-cast v8, Lˉˊ/ﹳٴ;

    invoke-virtual {v8}, Lˉˊ/ﹳٴ;->ʽﹳ()Lʼⁱ/ˊﹳ;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, v1, Lˑʼ/ᴵᵔ;->ᴵˑ:Lˑʼ/ᴵᵔ;

    goto :goto_4

    :cond_8
    move-object v1, v5

    :goto_4
    instance-of v2, v1, Lᴵʽ/ʾᵎ;

    if-eqz v2, :cond_9

    move-object v5, v1

    check-cast v5, Lᴵʽ/ʾᵎ;

    :cond_9
    if-eqz v5, :cond_a

    sget-object v1, Lᴵʽ/ʾᵎ;->ˆˑ:[Lᐧˆ/ˈ;

    sget-object v1, Lᴵʽ/ﹳᐧ;->ᴵˊ:Lᴵʽ/ﹳᐧ;

    invoke-virtual {v5, v1, v6, v6, v7}, Lᴵʽ/ʾᵎ;->ᐧⁱ(Lᴵʽ/ﹳᐧ;ZZZ)V

    invoke-virtual {v5, v6}, Lᴵʽ/ʾᵎ;->ˋ(Z)V

    :cond_a
    return-void

    :pswitch_1
    check-cast v8, Lᐧⁱ/ʼʼ;

    invoke-virtual {v8}, Lᐧⁱ/ʼʼ;->ᵎﹶ()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b0174

    if-ne v1, v2, :cond_b

    iget-object v1, v8, Lᐧⁱ/ʼʼ;->ᵔﹳ:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b0173

    if-ne v1, v2, :cond_c

    iget-object v1, v8, Lᐧⁱ/ʼʼ;->ﹳᐧ:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_c
    :goto_5
    return-void

    :pswitch_2
    move/from16 v19, v3

    check-cast v8, Lᐧⁱ/ʼˎ;

    iget-object v1, v8, Lᐧⁱ/ʼˎ;->ᵎﹶ:Lᐧⁱ/ˏי;

    iget-object v3, v1, Lᐧⁱ/ˏי;->ⁱᴵ:Lʽⁱ/ᵔٴ;

    if-eqz v3, :cond_d

    check-cast v3, Lʽⁱ/ᵎﹶ;

    invoke-virtual {v3, v2}, Lʽⁱ/ᵎﹶ;->ᐧﹶ(I)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v1, Lᐧⁱ/ˏי;->ⁱᴵ:Lʽⁱ/ᵔٴ;

    check-cast v2, Lⁱי/ʼʼ;

    invoke-virtual {v2}, Lⁱי/ʼʼ;->ˊﾞ()Lʽⁱ/ˉـ;

    move-result-object v2

    iget-object v3, v1, Lᐧⁱ/ˏי;->ⁱᴵ:Lʽⁱ/ᵔٴ;

    check-cast v2, Lﹶʽ/ˆʾ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lﹶʽ/ʼˎ;

    invoke-direct {v4, v2}, Lﹶʽ/ʼˎ;-><init>(Lﹶʽ/ˆʾ;)V

    move/from16 v2, v19

    invoke-virtual {v4, v2}, Lﹶʽ/ʼˎ;->ⁱˊ(I)Lʽⁱ/ᴵˑ;

    invoke-virtual {v4}, Lʽⁱ/ᴵˑ;->ˈ()Lʽⁱ/ᴵˑ;

    invoke-virtual {v4}, Lʽⁱ/ᴵˑ;->ﾞᴵ()Lʽⁱ/ᴵˑ;

    invoke-virtual {v4}, Lʽⁱ/ᴵˑ;->ᵔᵢ()Lʽⁱ/ᴵˑ;

    invoke-virtual {v4}, Lʽⁱ/ᴵˑ;->ﹳٴ()Lʽⁱ/ˉـ;

    move-result-object v2

    check-cast v3, Lⁱי/ʼʼ;

    invoke-virtual {v3, v2}, Lⁱי/ʼʼ;->ﾞˊ(Lʽⁱ/ˉـ;)V

    iget-object v1, v1, Lᐧⁱ/ˏי;->ˋᵔ:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_d
    return-void

    :pswitch_3
    check-cast v8, Lᐧⁱ/ˉˆ;

    iget-object v1, v8, Lᐧⁱ/ˉˆ;->ˉـ:Lᐧⁱ/ˏי;

    invoke-virtual {v8}, Lˋˋ/ʼـ;->ʽ()I

    move-result v2

    iget-object v3, v1, Lᐧⁱ/ˏי;->ʻᵎ:Landroid/view/View;

    if-nez v2, :cond_e

    iget-object v2, v1, Lᐧⁱ/ˏי;->ˆﾞ:Lᐧⁱ/ˉʿ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Lᐧⁱ/ˏי;->ˑﹳ(Lˋˋ/ᴵˑ;Landroid/view/View;)V

    goto :goto_6

    :cond_e
    if-ne v2, v6, :cond_f

    iget-object v2, v1, Lᐧⁱ/ˏי;->ˈʿ:Lᐧⁱ/ʼˎ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Lᐧⁱ/ˏי;->ˑﹳ(Lˋˋ/ᴵˑ;Landroid/view/View;)V

    goto :goto_6

    :cond_f
    iget-object v1, v1, Lᐧⁱ/ˏי;->ˋᵔ:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_6
    return-void

    :pswitch_4
    check-cast v8, Lᐧⁱ/ʼˎ;

    iget-object v1, v8, Lᐧⁱ/ʼˎ;->ᵎﹶ:Lᐧⁱ/ˏי;

    iget-object v3, v1, Lᐧⁱ/ˏי;->ⁱᴵ:Lʽⁱ/ᵔٴ;

    if-eqz v3, :cond_11

    check-cast v3, Lʽⁱ/ᵎﹶ;

    invoke-virtual {v3, v2}, Lʽⁱ/ᵎﹶ;->ᐧﹶ(I)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_7

    :cond_10
    iget-object v2, v1, Lᐧⁱ/ˏי;->ⁱᴵ:Lʽⁱ/ᵔٴ;

    check-cast v2, Lⁱי/ʼʼ;

    invoke-virtual {v2}, Lⁱי/ʼʼ;->ˊﾞ()Lʽⁱ/ˉـ;

    move-result-object v2

    iget-object v3, v1, Lᐧⁱ/ˏי;->ⁱᴵ:Lʽⁱ/ᵔٴ;

    check-cast v2, Lﹶʽ/ˆʾ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lﹶʽ/ʼˎ;

    invoke-direct {v4, v2}, Lﹶʽ/ʼˎ;-><init>(Lﹶʽ/ˆʾ;)V

    invoke-virtual {v4, v6}, Lﹶʽ/ʼˎ;->ⁱˊ(I)Lʽⁱ/ᴵˑ;

    invoke-virtual {v4, v6, v7}, Lʽⁱ/ᴵˑ;->ʼˎ(IZ)Lʽⁱ/ᴵˑ;

    invoke-virtual {v4}, Lʽⁱ/ᴵˑ;->ﹳٴ()Lʽⁱ/ˉـ;

    move-result-object v2

    check-cast v3, Lⁱי/ʼʼ;

    invoke-virtual {v3, v2}, Lⁱי/ʼʼ;->ﾞˊ(Lʽⁱ/ˉـ;)V

    iget-object v2, v1, Lᐧⁱ/ˏי;->ᵔי:Lʽᵔ/ʽ;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1300bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lʽᵔ/ʽ;->ﾞᴵ:[Ljava/lang/CharSequence;

    check-cast v2, [Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v1, v1, Lᐧⁱ/ˏי;->ˋᵔ:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_11
    :goto_7
    return-void

    :pswitch_5
    check-cast v8, Lᐧⁱ/ˏי;

    iget-boolean v1, v8, Lᐧⁱ/ˏי;->ﹶˎ:Z

    xor-int/2addr v1, v6

    invoke-virtual {v8, v1}, Lᐧⁱ/ˏי;->ˉˆ(Z)V

    return-void

    :pswitch_6
    check-cast v8, Lˉˊ/ﹳٴ;

    invoke-virtual {v8}, Lˉˊ/ﹳٴ;->ʽﹳ()Lʼⁱ/ˊﹳ;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v1, v1, Lˑʼ/ᴵᵔ;->ᴵˑ:Lˑʼ/ᴵᵔ;

    goto :goto_8

    :cond_12
    move-object v1, v5

    :goto_8
    instance-of v2, v1, Lˉˊ/ـˆ;

    if-eqz v2, :cond_13

    move-object v5, v1

    check-cast v5, Lˉˊ/ـˆ;

    :cond_13
    if-eqz v5, :cond_14

    sget-object v1, Lˉˊ/ـˆ;->ʽʾ:[Lᐧˆ/ˈ;

    sget-object v1, Lˉˊ/ˉˆ;->ᴵˊ:Lˉˊ/ˉˆ;

    invoke-virtual {v5, v1, v6, v6, v7}, Lˉˊ/ـˆ;->יˑ(Lˉˊ/ˉˆ;ZZZ)V

    invoke-virtual {v5, v6}, Lˉˊ/ـˆ;->ᐧⁱ(Z)V

    :cond_14
    return-void

    :pswitch_7
    check-cast v8, Lʾʼ/ᵔﹳ;

    iget-object v1, v8, Lʾʼ/ᵔﹳ;->ⁱᴵ:Ljava/lang/Object;

    invoke-interface {v1}, Lʻᵢ/ʽ;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʾʼ/ʼᐧ;

    iget-wide v1, v1, Lʾʼ/ʼᐧ;->ʾˋ:J

    invoke-static {v1, v2}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v1

    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object v2

    invoke-static {v1, v2}, Lj$/time/LocalDateTime;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/LocalDateTime;

    move-result-object v1

    iget-object v2, v8, Lʾʼ/ᵔﹳ;->ﹶˎ:Landroidx/leanback/widget/picker/TimePicker;

    invoke-virtual {v2}, Landroidx/leanback/widget/picker/TimePicker;->getHour()I

    move-result v2

    invoke-virtual {v1, v2}, Lj$/time/LocalDateTime;->withHour(I)Lj$/time/LocalDateTime;

    move-result-object v1

    iget-object v2, v8, Lʾʼ/ᵔﹳ;->ﹶˎ:Landroidx/leanback/widget/picker/TimePicker;

    invoke-virtual {v2}, Landroidx/leanback/widget/picker/TimePicker;->getMinute()I

    move-result v2

    invoke-virtual {v1, v2}, Lj$/time/LocalDateTime;->withMinute(I)Lj$/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v1, v7}, Lj$/time/LocalDateTime;->withSecond(I)Lj$/time/LocalDateTime;

    move-result-object v1

    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/time/LocalDateTime;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v1

    invoke-interface {v1}, Lj$/time/chrono/ChronoZonedDateTime;->toInstant()Lj$/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/play_billing/י;->ʾˋ:Ljava/lang/Long;

    invoke-virtual {v8}, Lʼⁱ/ˉˆ;->ˊˊ()V

    return-void

    :pswitch_8
    check-cast v8, Lʾʼ/ˉˆ;

    iget-object v1, v8, Lʾʼ/ˉˆ;->ﹶˎ:Landroidx/leanback/widget/picker/DatePicker;

    invoke-virtual {v1}, Landroidx/leanback/widget/picker/DatePicker;->getDate()J

    move-result-wide v1

    invoke-static {v1, v2}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v1

    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object v2

    invoke-static {v1, v2}, Lj$/time/LocalDateTime;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/LocalDateTime;

    move-result-object v1

    iget-object v2, v8, Lʾʼ/ˉˆ;->ⁱᴵ:Ljava/lang/Object;

    invoke-interface {v2}, Lʻᵢ/ʽ;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʾʼ/ᵔʾ;

    iget-wide v2, v2, Lʾʼ/ᵔʾ;->ʾˋ:J

    invoke-static {v2, v3}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v2

    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object v3

    invoke-static {v2, v3}, Lj$/time/LocalDateTime;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v1}, Lj$/time/LocalDateTime;->getYear()I

    move-result v3

    invoke-virtual {v2, v3}, Lj$/time/LocalDateTime;->withYear(I)Lj$/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v1}, Lj$/time/LocalDateTime;->getMonthValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lj$/time/LocalDateTime;->withMonth(I)Lj$/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v1}, Lj$/time/LocalDateTime;->getDayOfMonth()I

    move-result v1

    invoke-virtual {v2, v1}, Lj$/time/LocalDateTime;->withDayOfMonth(I)Lj$/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v1, v7}, Lj$/time/LocalDateTime;->withSecond(I)Lj$/time/LocalDateTime;

    move-result-object v1

    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/time/LocalDateTime;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v1

    invoke-interface {v1}, Lj$/time/chrono/ChronoZonedDateTime;->toInstant()Lj$/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/play_billing/י;->ʾˋ:Ljava/lang/Long;

    invoke-virtual {v8}, Lʼⁱ/ˉˆ;->ˊˊ()V

    return-void

    :pswitch_9
    move/from16 v16, v4

    check-cast v8, Lʾʼ/ˆʾ;

    iget-object v1, v8, Lʾʼ/ˆʾ;->ﹶˎ:Landroidx/leanback/widget/picker/Picker;

    invoke-virtual {v1, v7}, Landroidx/leanback/widget/picker/Picker;->ﹳٴ(I)Lי/ˈ;

    move-result-object v1

    iget-object v2, v8, Lʾʼ/ˆʾ;->ﹶˎ:Landroidx/leanback/widget/picker/Picker;

    invoke-virtual {v2, v6}, Landroidx/leanback/widget/picker/Picker;->ﹳٴ(I)Lי/ˈ;

    move-result-object v2

    if-eqz v1, :cond_15

    if-eqz v2, :cond_15

    iget v1, v1, Lי/ˈ;->ﹳٴ:I

    iget v2, v2, Lי/ˈ;->ﹳٴ:I

    mul-int/lit8 v2, v2, 0x5

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/play_billing/י;->ᴵˊ:Ljava/lang/Integer;

    invoke-virtual {v8}, Lʼⁱ/ˉˆ;->ˊˊ()V

    :cond_15
    return-void

    :pswitch_a
    check-cast v8, Lʽˊ/ـˆ;

    iget-object v1, v8, Lʽˊ/ـˆ;->ﾞᴵ:Landroid/widget/EditText;

    if-nez v1, :cond_16

    goto :goto_a

    :cond_16
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iget-object v2, v8, Lʽˊ/ـˆ;->ﾞᴵ:Landroid/widget/EditText;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    instance-of v2, v2, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v2, :cond_17

    iget-object v2, v8, Lʽˊ/ـˆ;->ﾞᴵ:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_9

    :cond_17
    iget-object v2, v8, Lʽˊ/ـˆ;->ﾞᴵ:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_9
    if-ltz v1, :cond_18

    iget-object v2, v8, Lʽˊ/ـˆ;->ﾞᴵ:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_18
    invoke-virtual {v8}, Lʽˊ/ᵔﹳ;->ʼᐧ()V

    :goto_a
    return-void

    :pswitch_b
    check-cast v8, Lʽˊ/ٴﹶ;

    invoke-virtual {v8}, Lʽˊ/ٴﹶ;->ˏי()V

    return-void

    :pswitch_c
    check-cast v8, Lʽˊ/ʽ;

    iget-object v1, v8, Lʽˊ/ʽ;->ʼˎ:Landroid/widget/EditText;

    if-nez v1, :cond_19

    goto :goto_b

    :cond_19
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    :cond_1a
    invoke-virtual {v8}, Lʽˊ/ᵔﹳ;->ʼᐧ()V

    :goto_b
    return-void

    :pswitch_d
    check-cast v8, Lʼⁱ/י;

    sget-object v1, Lʼⁱ/י;->ﹶʽ:[Lᐧˆ/ˈ;

    invoke-virtual {v8}, Lʼⁱ/י;->ˋـ()Lـי/ﹳٴ;

    move-result-object v1

    iget-object v1, v1, Lـי/ﹳٴ;->ˉˆ:Lar/tvplayer/tv/base/ui/CustomPinPicker;

    invoke-virtual {v1}, Lי/ˑﹳ;->getPin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1b

    invoke-virtual {v8, v1}, Lʼⁱ/י;->ـʻ(Ljava/lang/String;)V

    :cond_1b
    return-void

    :pswitch_e
    check-cast v8, Lʻـ/ˑﹳ;

    iget-object v1, v8, Lʻـ/ˑﹳ;->ˈⁱ:Lʻـ/ﾞᴵ;

    invoke-virtual {v8}, Lˋˋ/ʼـ;->ʽ()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1c

    iget-object v3, v1, Lʻـ/ﾞᴵ;->ˑﹳ:Lar/tvplayer/tv/base/ui/view/FloatingMenu;

    invoke-virtual {v3}, Lar/tvplayer/tv/base/ui/view/FloatingMenu;->getOnItemClickedListener()Lᴵⁱ/ﾞʻ;

    move-result-object v3

    if-eqz v3, :cond_1c

    iget-object v1, v1, Lʻـ/ﾞᴵ;->ˈ:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʻـ/ˈ;

    iget v1, v1, Lʻـ/ˈ;->ﹳٴ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Lᴵⁱ/ﾞʻ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-void

    :pswitch_f
    check-cast v8, Lcom/google/android/material/datepicker/ˉˆ;

    invoke-virtual {v8}, Lcom/google/android/material/datepicker/ˉˆ;->ᵢˋ()V

    throw v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
