.class public final Lʿᵢ/ʾˋ;
.super Lᴵʾ/ᵔᵢ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﾞʻ;


# instance fields
.field public ˉٴ:Ljava/lang/Object;

.field public ˊʻ:I

.field public final synthetic ٴʼ:Ljava/io/Serializable;

.field public final synthetic ٴᵢ:Lʿᵢ/ˈٴ;

.field public final synthetic ᴵᵔ:I

.field public final synthetic ᵎⁱ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lʿᵢ/ˈٴ;Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;Lˈי/ˈ;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lʿᵢ/ʾˋ;->ᴵᵔ:I

    iput-object p1, p0, Lʿᵢ/ʾˋ;->ٴᵢ:Lʿᵢ/ˈٴ;

    iput-object p2, p0, Lʿᵢ/ʾˋ;->ᵎⁱ:Ljava/lang/Object;

    check-cast p3, Lᴵʾ/ᵔᵢ;

    iput-object p3, p0, Lʿᵢ/ʾˋ;->ٴʼ:Ljava/io/Serializable;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    return-void
.end method

.method public constructor <init>(Lˊʼ/ˏי;Lʿᵢ/ˈٴ;Lˊʼ/ﹳᐧ;Lˈי/ˈ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lʿᵢ/ʾˋ;->ᴵᵔ:I

    iput-object p1, p0, Lʿᵢ/ʾˋ;->ᵎⁱ:Ljava/lang/Object;

    iput-object p2, p0, Lʿᵢ/ʾˋ;->ٴᵢ:Lʿᵢ/ˈٴ;

    iput-object p3, p0, Lʿᵢ/ʾˋ;->ٴʼ:Ljava/io/Serializable;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    iget v0, p0, Lʿᵢ/ʾˋ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lʿᵢ/ʾˋ;->ˊʻ:I

    iget-object v1, p0, Lʿᵢ/ʾˋ;->ٴᵢ:Lʿᵢ/ˈٴ;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sget-object v5, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    iget-object v5, p0, Lʿᵢ/ʾˋ;->ˉٴ:Ljava/lang/Object;

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lʿᵢ/ʾˋ;->ˉٴ:Ljava/lang/Object;

    check-cast v0, Lʿᵢ/ʽ;

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iput v4, p0, Lʿᵢ/ʾˋ;->ˊʻ:I

    invoke-static {v1, v4, p0}, Lʿᵢ/ˈٴ;->ᵎﹶ(Lʿᵢ/ˈٴ;ZLᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v5, :cond_4

    goto :goto_3

    :cond_4
    :goto_0
    move-object v0, p1

    check-cast v0, Lʿᵢ/ʽ;

    iget-object p1, p0, Lʿᵢ/ʾˋ;->ᵎⁱ:Ljava/lang/Object;

    check-cast p1, Lˈי/ᵔᵢ;

    new-instance v6, Lʼˋ/ﾞᴵ;

    iget-object v7, p0, Lʿᵢ/ʾˋ;->ٴʼ:Ljava/io/Serializable;

    check-cast v7, Lᴵʾ/ᵔᵢ;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v0, v8}, Lʼˋ/ﾞᴵ;-><init>(Lᴵⁱ/ʼᐧ;Lʿᵢ/ʽ;Lˈי/ˈ;)V

    iput-object v0, p0, Lʿᵢ/ʾˋ;->ˉٴ:Ljava/lang/Object;

    iput v3, p0, Lʿᵢ/ʾˋ;->ˊʻ:I

    invoke-static {p1, v6, p0}, Lᴵי/ʾᵎ;->ʾᵎ(Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v5, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    iget-object v3, v0, Lʿᵢ/ʽ;->ⁱˊ:Ljava/lang/Object;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    iget v6, v0, Lʿᵢ/ʽ;->ʽ:I

    if-ne v3, v6, :cond_8

    iget-object v0, v0, Lʿᵢ/ʽ;->ⁱˊ:Ljava/lang/Object;

    invoke-static {v0, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iput-object p1, p0, Lʿᵢ/ʾˋ;->ˉٴ:Ljava/lang/Object;

    iput v2, p0, Lʿᵢ/ʾˋ;->ˊʻ:I

    invoke-virtual {v1, p1, v4, p0}, Lʿᵢ/ˈٴ;->ٴﹶ(Ljava/lang/Object;ZLᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_7

    goto :goto_3

    :cond_7
    move-object v5, p1

    :goto_3
    return-object v5

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Data in DataStore was mutated but DataStore is only compatible with Immutable types."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lʿᵢ/ʾˋ;->ٴʼ:Ljava/io/Serializable;

    check-cast v0, Lˊʼ/ﹳᐧ;

    iget-object v1, p0, Lʿᵢ/ʾˋ;->ᵎⁱ:Ljava/lang/Object;

    check-cast v1, Lˊʼ/ˏי;

    iget v2, p0, Lʿᵢ/ʾˋ;->ˊʻ:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    iget-object v5, p0, Lʿᵢ/ʾˋ;->ٴᵢ:Lʿᵢ/ˈٴ;

    const/4 v6, 0x1

    sget-object v7, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v2, :cond_c

    if-eq v2, v6, :cond_b

    if-eq v2, v4, :cond_a

    if-ne v2, v3, :cond_9

    iget-object v0, p0, Lʿᵢ/ʾˋ;->ˉٴ:Ljava/lang/Object;

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Lˊʼ/ﹳᐧ;

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_6

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iget-object v2, p0, Lʿᵢ/ʾˋ;->ˉٴ:Ljava/lang/Object;

    check-cast v2, Ljava/io/Serializable;

    check-cast v2, Lˊʼ/ﹳᐧ;

    :try_start_0
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_b
    iget-object v2, p0, Lʿᵢ/ʾˋ;->ˉٴ:Ljava/lang/Object;

    check-cast v2, Ljava/io/Serializable;

    check-cast v2, Lˊʼ/ˏי;

    :try_start_1
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_c
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    :try_start_2
    iput-object v1, p0, Lʿᵢ/ʾˋ;->ˉٴ:Ljava/lang/Object;

    iput v6, p0, Lʿᵢ/ʾˋ;->ˊʻ:I

    invoke-virtual {v5, p0}, Lʿᵢ/ˈٴ;->ˆʾ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v7, :cond_d

    goto :goto_8

    :cond_d
    move-object v2, v1

    :goto_4
    iput-object p1, v2, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    invoke-virtual {v5}, Lʿᵢ/ˈٴ;->ᵔᵢ()Lʿᵢ/ˑٴ;

    move-result-object p1

    iput-object v0, p0, Lʿᵢ/ʾˋ;->ˉٴ:Ljava/lang/Object;

    iput v4, p0, Lʿᵢ/ʾˋ;->ˊʻ:I

    invoke-interface {p1, p0}, Lʿᵢ/ˑٴ;->ˈ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v7, :cond_e

    goto :goto_8

    :cond_e
    move-object v2, v0

    :goto_5
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v2, Lˊʼ/ﹳᐧ;->ʾˋ:I
    :try_end_2
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    iget-object p1, v1, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    iput-object v0, p0, Lʿᵢ/ʾˋ;->ˉٴ:Ljava/lang/Object;

    iput v3, p0, Lʿᵢ/ʾˋ;->ˊʻ:I

    invoke-virtual {v5, p1, v6, p0}, Lʿᵢ/ˈٴ;->ٴﹶ(Ljava/lang/Object;ZLᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v7, :cond_f

    goto :goto_8

    :cond_f
    :goto_6
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v0, Lˊʼ/ﹳᐧ;->ʾˋ:I

    :goto_7
    sget-object v7, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    :goto_8
    return-object v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    iget v0, p0, Lʿᵢ/ʾˋ;->ᴵᵔ:I

    check-cast p1, Lˈי/ˈ;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lʿᵢ/ʾˋ;

    iget-object v1, p0, Lʿᵢ/ʾˋ;->ᵎⁱ:Ljava/lang/Object;

    check-cast v1, Lˈי/ᵔᵢ;

    iget-object v2, p0, Lʿᵢ/ʾˋ;->ٴʼ:Ljava/io/Serializable;

    check-cast v2, Lᴵʾ/ᵔᵢ;

    iget-object v3, p0, Lʿᵢ/ʾˋ;->ٴᵢ:Lʿᵢ/ˈٴ;

    invoke-direct {v0, v3, v1, v2, p1}, Lʿᵢ/ʾˋ;-><init>(Lʿᵢ/ˈٴ;Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;Lˈי/ˈ;)V

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {v0, p1}, Lʿᵢ/ʾˋ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    new-instance v0, Lʿᵢ/ʾˋ;

    iget-object v1, p0, Lʿᵢ/ʾˋ;->ᵎⁱ:Ljava/lang/Object;

    check-cast v1, Lˊʼ/ˏי;

    iget-object v2, p0, Lʿᵢ/ʾˋ;->ٴʼ:Ljava/io/Serializable;

    check-cast v2, Lˊʼ/ﹳᐧ;

    iget-object v3, p0, Lʿᵢ/ʾˋ;->ٴᵢ:Lʿᵢ/ˈٴ;

    invoke-direct {v0, v1, v3, v2, p1}, Lʿᵢ/ʾˋ;-><init>(Lˊʼ/ˏי;Lʿᵢ/ˈٴ;Lˊʼ/ﹳᐧ;Lˈי/ˈ;)V

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {v0, p1}, Lʿᵢ/ʾˋ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
