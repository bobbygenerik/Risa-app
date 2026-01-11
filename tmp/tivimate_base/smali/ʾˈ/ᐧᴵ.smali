.class public final Lʾˈ/ᐧᴵ;
.super Lᴵʾ/ᵔᵢ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ʼᐧ;


# instance fields
.field public synthetic ˊʻ:Ljava/lang/Object;

.field public final synthetic ٴᵢ:Lʾˈ/ᴵʼ;

.field public final synthetic ᴵᵔ:I


# direct methods
.method public synthetic constructor <init>(Lʾˈ/ᴵʼ;Lˈי/ˈ;I)V
    .locals 0

    iput p3, p0, Lʾˈ/ᐧᴵ;->ᴵᵔ:I

    iput-object p1, p0, Lʾˈ/ᐧᴵ;->ٴᵢ:Lʾˈ/ᴵʼ;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Lʾˈ/ᐧᴵ;->ᴵᵔ:I

    check-cast p1, Lʾˈ/ᵎⁱ;

    check-cast p2, Lˈי/ˈ;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lʾˈ/ᐧᴵ;->ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    check-cast p1, Lʾˈ/ᐧᴵ;

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lʾˈ/ᐧᴵ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lʾˈ/ᐧᴵ;->ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    check-cast p1, Lʾˈ/ᐧᴵ;

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lʾˈ/ᐧᴵ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;
    .locals 3

    .prologue
    iget v0, p0, Lʾˈ/ᐧᴵ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lʾˈ/ᐧᴵ;

    iget-object v1, p0, Lʾˈ/ᐧᴵ;->ٴᵢ:Lʾˈ/ᴵʼ;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p2, v2}, Lʾˈ/ᐧᴵ;-><init>(Lʾˈ/ᴵʼ;Lˈי/ˈ;I)V

    iput-object p1, v0, Lʾˈ/ᐧᴵ;->ˊʻ:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    new-instance v0, Lʾˈ/ᐧᴵ;

    iget-object v1, p0, Lʾˈ/ᐧᴵ;->ٴᵢ:Lʾˈ/ᴵʼ;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lʾˈ/ᐧᴵ;-><init>(Lʾˈ/ᴵʼ;Lˈי/ˈ;I)V

    iput-object p1, v0, Lʾˈ/ᐧᴵ;->ˊʻ:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .prologue
    move-object/from16 v0, p0

    iget v1, v0, Lʾˈ/ᐧᴵ;->ᴵᵔ:I

    packed-switch v1, :pswitch_data_0

    invoke-static/range {p1 .. p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object v1, v0, Lʾˈ/ᐧᴵ;->ˊʻ:Ljava/lang/Object;

    check-cast v1, Lʾˈ/ᵎⁱ;

    iget-object v2, v0, Lʾˈ/ᐧᴵ;->ٴᵢ:Lʾˈ/ᴵʼ;

    invoke-virtual {v2, v1}, Lʾˈ/ᴵʼ;->ˈ(Lʾˈ/ᵎⁱ;)Z

    move-result v3

    iget-object v4, v2, Lʾˈ/ᴵʼ;->ﾞᴵ:Lʾˈ/ʽʽ;

    iget-object v5, v1, Lʾˈ/ᵎⁱ;->ʽ:Ljava/util/Map;

    const/4 v6, 0x0

    const-string v7, "FirebaseSessions"

    const/4 v8, 0x1

    if-eqz v5, :cond_9

    iget-boolean v9, v4, Lʾˈ/ʽʽ;->ﾞᴵ:Z

    if-eqz v9, :cond_1

    :cond_0
    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_1
    iget-object v9, v4, Lʾˈ/ʽʽ;->ﹳٴ:Landroid/content/Context;

    invoke-static {v9}, Lʾˈ/ˊʻ;->ﹳٴ(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :cond_2
    :goto_0
    if-ge v13, v12, :cond_4

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Lʾˈ/ᴵᵔ;

    iget-object v15, v14, Lʾˈ/ᴵᵔ;->ﹳٴ:Ljava/lang/String;

    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lʾˈ/ʾˋ;

    if-eqz v15, :cond_3

    new-instance v10, Lʻᵢ/ˑﹳ;

    invoke-direct {v10, v14, v15}, Lʻᵢ/ˑﹳ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move-object v10, v6

    :goto_1
    if-eqz v10, :cond_2

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    move v10, v8

    goto :goto_3

    :cond_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :cond_7
    :goto_2
    if-ge v10, v9, :cond_5

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v10, v10, 0x1

    check-cast v12, Lʻᵢ/ˑﹳ;

    iget-object v13, v12, Lʻᵢ/ˑﹳ;->ʾˋ:Ljava/lang/Object;

    check-cast v13, Lʾˈ/ᴵᵔ;

    iget-object v12, v12, Lʻᵢ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v12, Lʾˈ/ʾˋ;

    invoke-virtual {v4}, Lʾˈ/ʽʽ;->ﹳٴ()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v13, Lʾˈ/ᴵᵔ;->ﹳٴ:Ljava/lang/String;

    iget v13, v13, Lʾˈ/ᴵᵔ;->ⁱˊ:I

    invoke-static {v14, v15}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    iget v14, v12, Lʾˈ/ʾˋ;->ﹳٴ:I

    if-ne v13, v14, :cond_7

    iget-object v13, v4, Lʾˈ/ʽʽ;->ˈ:Lʻᵢ/ʼˎ;

    invoke-virtual {v13}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iget-object v12, v12, Lʾˈ/ʾˋ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v13, v12}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    goto :goto_2

    :cond_8
    iget v12, v12, Lʾˈ/ʾˋ;->ﹳٴ:I

    if-eq v13, v12, :cond_0

    goto :goto_2

    :goto_3
    if-eqz v10, :cond_a

    const-string v9, "Cold app start detected"

    nop

    goto :goto_4

    :cond_9
    const-string v9, "No process data map"

    nop

    move v10, v8

    :cond_a
    :goto_4
    invoke-virtual {v2, v1}, Lʾˈ/ᴵʼ;->ʽ(Lʾˈ/ᵎⁱ;)Z

    move-result v7

    if-eqz v10, :cond_b

    sget-object v5, Lﹶˈ/ᵔﹳ;->ʾˋ:Lﹶˈ/ᵔﹳ;

    invoke-virtual {v4, v5}, Lʾˈ/ʽʽ;->ⁱˊ(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    goto :goto_5

    :cond_b
    if-eqz v7, :cond_c

    invoke-virtual {v4, v5}, Lʾˈ/ʽʽ;->ⁱˊ(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    :cond_c
    :goto_5
    if-eqz v10, :cond_d

    move-object v9, v6

    goto :goto_6

    :cond_d
    iget-object v9, v1, Lʾˈ/ᵎⁱ;->ﹳٴ:Lʾˈ/ᵔٴ;

    :goto_6
    const/4 v11, 0x3

    if-nez v3, :cond_f

    if-eqz v10, :cond_e

    goto :goto_7

    :cond_e
    if-eqz v7, :cond_10

    invoke-virtual {v4, v5}, Lʾˈ/ʽʽ;->ⁱˊ(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v6, v6, v2, v11}, Lʾˈ/ᵎⁱ;->ﹳٴ(Lʾˈ/ᵎⁱ;Lʾˈ/ᵔٴ;Lʾˈ/ـﹶ;Ljava/util/Map;I)Lʾˈ/ᵎⁱ;

    move-result-object v1

    goto :goto_8

    :cond_f
    :goto_7
    iget-object v1, v2, Lʾˈ/ᴵʼ;->ⁱˊ:Lʾˈ/ﹳـ;

    invoke-virtual {v1, v9}, Lʾˈ/ﹳـ;->ﹳٴ(Lʾˈ/ᵔٴ;)Lʾˈ/ᵔٴ;

    move-result-object v1

    iget-object v2, v2, Lʾˈ/ᴵʼ;->ʽ:Lʾˈ/ˋᵔ;

    check-cast v2, Lʾˈ/ـˏ;

    iget-object v3, v2, Lʾˈ/ـˏ;->ˑﹳ:Lˈי/ᵔᵢ;

    invoke-static {v3}, Lᴵי/ʾᵎ;->ⁱˊ(Lˈי/ᵔᵢ;)Lˊʽ/ˈ;

    move-result-object v3

    new-instance v7, Lʾˈ/ˊˋ;

    invoke-direct {v7, v2, v1, v6}, Lʾˈ/ˊˋ;-><init>(Lʾˈ/ـˏ;Lʾˈ/ᵔٴ;Lˈי/ˈ;)V

    invoke-static {v3, v6, v7, v11}, Lᴵי/ʾᵎ;->ˉˆ(Lᴵי/ـˆ;Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;I)Lᴵי/ˈˏ;

    iput-boolean v8, v4, Lʾˈ/ʽʽ;->ﾞᴵ:Z

    new-instance v2, Lʾˈ/ᵎⁱ;

    invoke-direct {v2, v1, v6, v5}, Lʾˈ/ᵎⁱ;-><init>(Lʾˈ/ᵔٴ;Lʾˈ/ـﹶ;Ljava/util/Map;)V

    move-object v1, v2

    :cond_10
    :goto_8
    return-object v1

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object v1, v0, Lʾˈ/ᐧᴵ;->ˊʻ:Ljava/lang/Object;

    check-cast v1, Lʾˈ/ᵎⁱ;

    iget-object v2, v0, Lʾˈ/ᐧᴵ;->ٴᵢ:Lʾˈ/ᴵʼ;

    iget-object v2, v2, Lʾˈ/ᴵʼ;->ˈ:Lʾˈ/ˈˏ;

    invoke-virtual {v2}, Lʾˈ/ˈˏ;->ﹳٴ()Lʾˈ/ـﹶ;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Lʾˈ/ᵎⁱ;->ﹳٴ(Lʾˈ/ᵎⁱ;Lʾˈ/ᵔٴ;Lʾˈ/ـﹶ;Ljava/util/Map;I)Lʾˈ/ᵎⁱ;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
