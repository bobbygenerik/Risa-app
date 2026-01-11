.class public final Lᐧⁱ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᐧⁱ/ˈʿ;
.implements Lﹶⁱ/ﹳٴ;


# instance fields
.field public final ʾˋ:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0

    .prologue
    packed-switch p2, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lᐧⁱ/ᵎﹶ;->ʾˋ:Landroid/content/res/Resources;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᐧⁱ/ᵎﹶ;->ʾˋ:Landroid/content/res/Resources;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public ʽ(Lʽⁱ/ﹳᐧ;)Ljava/lang/String;
    .locals 13

    .prologue
    iget-object v0, p1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    iget v1, p1, Lʽⁱ/ﹳᐧ;->ˆʾ:I

    iget v2, p1, Lʽⁱ/ﹳᐧ;->ˊʻ:I

    iget v3, p1, Lʽⁱ/ﹳᐧ;->ʻٴ:I

    iget v4, p1, Lʽⁱ/ﹳᐧ;->ʽﹳ:I

    iget-object v5, p1, Lʽⁱ/ﹳᐧ;->ٴﹶ:Ljava/lang/String;

    invoke-static {v0}, Lʽⁱ/ˉٴ;->ʼˎ(Ljava/lang/String;)I

    move-result v0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, -0x1

    if-eq v0, v8, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v5}, Lʽⁱ/ˉٴ;->ˆʾ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    move v0, v7

    goto :goto_2

    :cond_2
    invoke-static {v5}, Lʽⁱ/ˉٴ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_1
    move v0, v6

    goto :goto_2

    :cond_4
    if-ne v4, v8, :cond_1

    if-eq v3, v8, :cond_5

    goto :goto_0

    :cond_5
    if-ne v2, v8, :cond_3

    iget v0, p1, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    if-eq v0, v8, :cond_6

    goto :goto_1

    :cond_6
    move v0, v8

    :goto_2
    const/4 v5, 0x0

    const v9, 0x49742400    # 1000000.0f

    const v10, 0x7f1300b6

    const-string v11, ""

    iget-object v12, p0, Lᐧⁱ/ᵎﹶ;->ʾˋ:Landroid/content/res/Resources;

    if-ne v0, v7, :cond_a

    invoke-virtual {p0, p1}, Lᐧⁱ/ᵎﹶ;->ⁱˊ(Lʽⁱ/ﹳᐧ;)Ljava/lang/String;

    move-result-object v0

    if-eq v4, v8, :cond_8

    if-ne v3, v8, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v3, v4, v6

    const v2, 0x7f1300b8

    invoke-virtual {v12, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_8
    :goto_3
    move-object v2, v11

    :goto_4
    if-ne v1, v8, :cond_9

    goto :goto_5

    :cond_9
    int-to-float v1, v1

    div-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {v12, v10, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :goto_5
    filled-new-array {v0, v2, v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lᐧⁱ/ᵎﹶ;->ˈ([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_a
    if-ne v0, v6, :cond_12

    invoke-virtual {p0, p1}, Lᐧⁱ/ᵎﹶ;->ﹳٴ(Lʽⁱ/ﹳᐧ;)Ljava/lang/String;

    move-result-object v0

    if-eq v2, v8, :cond_10

    if-ge v2, v6, :cond_b

    goto :goto_6

    :cond_b
    if-eq v2, v6, :cond_f

    if-eq v2, v7, :cond_e

    const/4 v3, 0x6

    if-eq v2, v3, :cond_d

    const/4 v3, 0x7

    if-eq v2, v3, :cond_d

    const/16 v3, 0x8

    if-eq v2, v3, :cond_c

    const v2, 0x7f1300c1

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_c
    const v2, 0x7f1300c3

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_d
    const v2, 0x7f1300c2

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_e
    const v2, 0x7f1300c0

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_f
    const v2, 0x7f1300b7

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_10
    :goto_6
    move-object v2, v11

    :goto_7
    if-ne v1, v8, :cond_11

    goto :goto_8

    :cond_11
    int-to-float v1, v1

    div-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {v12, v10, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :goto_8
    filled-new-array {v0, v2, v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lᐧⁱ/ᵎﹶ;->ˈ([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_12
    invoke-virtual {p0, p1}, Lᐧⁱ/ᵎﹶ;->ﹳٴ(Lʽⁱ/ﹳᐧ;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    return-object v0

    :cond_13
    iget-object p1, p1, Lʽⁱ/ﹳᐧ;->ˈ:Ljava/lang/String;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_a

    :cond_14
    new-array v0, v6, [Ljava/lang/Object;

    aput-object p1, v0, v5

    const p1, 0x7f1300c5

    invoke-virtual {v12, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_15
    :goto_a
    const p1, 0x7f1300c4

    invoke-virtual {v12, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs ˈ([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    array-length v0, p1

    const-string v1, ""

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, v4

    goto :goto_1

    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    const/4 v1, 0x1

    aput-object v4, v5, v1

    iget-object v1, p0, Lᐧⁱ/ᵎﹶ;->ʾˋ:Landroid/content/res/Resources;

    const v4, 0x7f1300b5

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public ˑﹳ(Lʿʾ/ᵢˏ;Lʼᵔ/ᵔᵢ;)Lʿʾ/ᵢˏ;
    .locals 1

    .prologue
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p2, Lᵔﹶ/ʽ;

    iget-object v0, p0, Lᐧⁱ/ᵎﹶ;->ʾˋ:Landroid/content/res/Resources;

    invoke-direct {p2, v0, p1}, Lᵔﹶ/ʽ;-><init>(Landroid/content/res/Resources;Lʿʾ/ᵢˏ;)V

    return-object p2
.end method

.method public ⁱˊ(Lʽⁱ/ﹳᐧ;)Ljava/lang/String;
    .locals 3

    .prologue
    iget v0, p1, Lʽⁱ/ﹳᐧ;->ﾞᴵ:I

    iget p1, p1, Lʽⁱ/ﹳᐧ;->ﾞᴵ:I

    and-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lᐧⁱ/ᵎﹶ;->ʾˋ:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    const v0, 0x7f1300b9

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_1

    const v2, 0x7f1300bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lᐧⁱ/ᵎﹶ;->ˈ([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_2

    const v2, 0x7f1300bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lᐧⁱ/ᵎﹶ;->ˈ([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    and-int/lit16 p1, p1, 0x440

    if-eqz p1, :cond_3

    const p1, 0x7f1300ba

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lᐧⁱ/ᵎﹶ;->ˈ([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method

.method public ﹳٴ(Lʽⁱ/ﹳᐧ;)Ljava/lang/String;
    .locals 7

    .prologue
    iget-object v0, p1, Lʽⁱ/ﹳᐧ;->ˈ:Ljava/lang/String;

    iget-object v1, p1, Lʽⁱ/ﹳᐧ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_1

    const-string v2, "und"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {}, Lᐧˎ/ʼʼ;->ʼʼ()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    :goto_0
    move-object v0, v3

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    invoke-virtual {p0, p1}, Lᐧⁱ/ᵎﹶ;->ⁱˊ(Lʽⁱ/ﹳᐧ;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lᐧⁱ/ᵎﹶ;->ˈ([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    move-object v1, v3

    :cond_3
    move-object p1, v1

    :cond_4
    return-object p1
.end method
