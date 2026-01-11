.class public final Lʾˈ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﾞﹶ/ⁱˊ;


# instance fields
.field public final synthetic ʾˋ:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lʾˈ/ʼᐧ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ⁱˊ(Lʿᵢ/ˏᵢ;Lˊⁱ/ˑﹳ;Lˊʽ/ˈ;Lᴵⁱ/ﹳٴ;)Lʿᵢ/ˈٴ;
    .locals 6

    .prologue
    sget-object v0, Lﹶˈ/ʼᐧ;->ʾˋ:Lﹶˈ/ʼᐧ;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "datastore_shared_counter"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lʿᵢ/ˈٴ;

    new-instance v3, Lʿᵢ/ᵎⁱ;

    new-instance v4, Lʽﹳ/ˉʿ;

    const/4 v5, 0x2

    invoke-direct {v4, v5, p2}, Lʽﹳ/ˉʿ;-><init>(ILjava/lang/Object;)V

    invoke-direct {v3, p0, v4, p3}, Lʿᵢ/ᵎⁱ;-><init>(Lʿᵢ/ˏᵢ;Lᴵⁱ/ﾞʻ;Lᴵⁱ/ﹳٴ;)V

    new-instance p0, Lʼˋ/ﾞᴵ;

    const/16 p3, 0x11

    invoke-direct {p0, v0, v1, p3}, Lʼˋ/ﾞᴵ;-><init>(Ljava/lang/Object;Lˈי/ˈ;I)V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, v3, p0, p1, p2}, Lʿᵢ/ˈٴ;-><init>(Lʿᵢ/ﹶᐧ;Ljava/util/List;Lʿᵢ/ⁱˊ;Lˊʽ/ˈ;)V

    return-object v2

    :catch_0
    new-instance v2, Lʿᵢ/ᵎⁱ;

    sget-object v3, Lʿᵢ/ٴᵢ;->ᴵˊ:Lʿᵢ/ٴᵢ;

    invoke-direct {v2, p0, v3, p3}, Lʿᵢ/ᵎⁱ;-><init>(Lʿᵢ/ˏᵢ;Lᴵⁱ/ﾞʻ;Lᴵⁱ/ﹳٴ;)V

    new-instance p0, Lʼˋ/ﾞᴵ;

    const/16 p3, 0x11

    invoke-direct {p0, v0, v1, p3}, Lʼˋ/ﾞᴵ;-><init>(Ljava/lang/Object;Lˈי/ˈ;I)V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance p3, Lʿᵢ/ˈٴ;

    invoke-direct {p3, v2, p0, p1, p2}, Lʿᵢ/ˈٴ;-><init>(Lʿᵢ/ﹶᐧ;Ljava/util/List;Lʿᵢ/ⁱˊ;Lˊʽ/ˈ;)V

    return-object p3
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Lʾˈ/ʼᐧ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lʾˈ/ﹶᐧ;->ﹳٴ:Lʾˈ/ﹶᐧ;

    return-object v0

    :pswitch_0
    sget-object v0, Lʾˈ/ˈˏ;->ﹳٴ:Lʾˈ/ˈˏ;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public ﹳٴ(Lʽʼ/ˑﹳ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 8

    .prologue
    instance-of v0, p2, Lʾˈ/ʻٴ;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lʾˈ/ʻٴ;

    iget v1, v0, Lʾˈ/ʻٴ;->ٴᵢ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lʾˈ/ʻٴ;->ٴᵢ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lʾˈ/ʻٴ;

    invoke-direct {v0, p0, p2}, Lʾˈ/ʻٴ;-><init>(Lʾˈ/ʼᐧ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p2, v0, Lʾˈ/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    iget v1, v0, Lʾˈ/ʻٴ;->ٴᵢ:I

    const-string v2, "FirebaseSessions"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, ""

    sget-object v6, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-ne v1, v3, :cond_1

    iget-object p1, v0, Lʾˈ/ʻٴ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p2

    goto :goto_6

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lʾˈ/ʻٴ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Lʽʼ/ˑﹳ;

    :try_start_1
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    :try_start_2
    move-object p2, p1

    check-cast p2, Lʽʼ/ˈ;

    invoke-virtual {p2}, Lʽʼ/ˈ;->ˑﹳ()Lˏـ/ˉʿ;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iput-object p2, v0, Lʾˈ/ʻٴ;->ˈٴ:Ljava/lang/Object;

    iput v4, v0, Lʾˈ/ʻٴ;->ٴᵢ:I

    invoke-static {p1, v0}, Lﹳˋ/ʽʽ;->ʽ(Lˏـ/ˉʿ;Lʾˈ/ʻٴ;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-ne p1, v6, :cond_4

    goto :goto_4

    :cond_4
    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_1
    :try_start_4
    check-cast p2, Lʽʼ/ﹳٴ;

    iget-object p2, p2, Lʽʼ/ﹳٴ;->ﹳٴ:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_2
    const-string v1, "Error getting authentication token."

    nop

    move-object p2, p1

    move-object p1, v5

    :goto_3
    :try_start_5
    check-cast p2, Lʽʼ/ˈ;

    invoke-virtual {p2}, Lʽʼ/ˈ;->ˈ()Lˏـ/ˉʿ;

    move-result-object p2

    iput-object p1, v0, Lʾˈ/ʻٴ;->ˈٴ:Ljava/lang/Object;

    iput v3, v0, Lʾˈ/ʻٴ;->ٴᵢ:I

    invoke-static {p2, v0}, Lﹳˋ/ʽʽ;->ʽ(Lˏـ/ˉʿ;Lʾˈ/ʻٴ;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v6, :cond_5

    :goto_4
    return-object v6

    :cond_5
    :goto_5
    check-cast p2, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-nez p2, :cond_6

    goto :goto_7

    :cond_6
    move-object v5, p2

    goto :goto_7

    :goto_6
    const-string v0, "Error getting Firebase installation id ."

    nop

    :goto_7
    new-instance p2, Lʾˈ/ـˆ;

    invoke-direct {p2, v5, p1}, Lʾˈ/ـˆ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method
