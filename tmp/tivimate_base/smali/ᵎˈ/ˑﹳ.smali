.class public final Lᵎˈ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵎˈ/ᵔᵢ;


# instance fields
.field public final synthetic ʽʽ:Lˊʼ/ˏי;

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lᵎˈ/ᵔᵢ;


# direct methods
.method public constructor <init>(Lᵎˈ/ᵔᵢ;Lˊʼ/ˏי;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lᵎˈ/ˑﹳ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵎˈ/ˑﹳ;->ᴵˊ:Lᵎˈ/ᵔᵢ;

    iput-object p2, p0, Lᵎˈ/ˑﹳ;->ʽʽ:Lˊʼ/ˏי;

    return-void
.end method

.method public constructor <init>(Lᵎˈ/ﾞᴵ;Lˊʼ/ˏי;Lᵎˈ/ᵔᵢ;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lᵎˈ/ˑﹳ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lᵎˈ/ˑﹳ;->ʽʽ:Lˊʼ/ˏי;

    iput-object p3, p0, Lᵎˈ/ˑﹳ;->ᴵˊ:Lᵎˈ/ᵔᵢ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 5

    .prologue
    iget v0, p0, Lᵎˈ/ˑﹳ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p2, Lᵎˈ/ʼᐧ;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lᵎˈ/ʼᐧ;

    iget v1, v0, Lᵎˈ/ʼᐧ;->ٴᵢ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lᵎˈ/ʼᐧ;->ٴᵢ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lᵎˈ/ʼᐧ;

    invoke-direct {v0, p0, p2}, Lᵎˈ/ʼᐧ;-><init>(Lᵎˈ/ˑﹳ;Lˈי/ˈ;)V

    :goto_0
    iget-object p2, v0, Lᵎˈ/ʼᐧ;->ᴵᵔ:Ljava/lang/Object;

    iget v1, v0, Lᵎˈ/ʼᐧ;->ٴᵢ:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Lᵎˈ/ʼᐧ;->ˈٴ:Lᵎˈ/ˑﹳ;

    :try_start_0
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    :try_start_1
    iget-object p2, p0, Lᵎˈ/ˑﹳ;->ᴵˊ:Lᵎˈ/ᵔᵢ;

    iput-object p0, v0, Lᵎˈ/ʼᐧ;->ˈٴ:Lᵎˈ/ˑﹳ;

    iput v2, v0, Lᵎˈ/ʼᐧ;->ٴᵢ:I

    invoke-interface {p2, p1, v0}, Lᵎˈ/ᵔᵢ;->ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object p2, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, p2, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    :goto_2
    return-object p2

    :catchall_1
    move-exception p2

    move-object p1, p0

    :goto_3
    iget-object p1, p1, Lᵎˈ/ˑﹳ;->ʽʽ:Lˊʼ/ˏי;

    iput-object p2, p1, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    throw p2

    :pswitch_0
    instance-of v0, p2, Lᵎˈ/ˈ;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Lᵎˈ/ˈ;

    iget v1, v0, Lᵎˈ/ˈ;->ˊʻ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_4

    sub-int/2addr v1, v2

    iput v1, v0, Lᵎˈ/ˈ;->ˊʻ:I

    goto :goto_4

    :cond_4
    new-instance v0, Lᵎˈ/ˈ;

    invoke-direct {v0, p0, p2}, Lᵎˈ/ˈ;-><init>(Lᵎˈ/ˑﹳ;Lˈי/ˈ;)V

    :goto_4
    iget-object p2, v0, Lᵎˈ/ˈ;->ˈٴ:Ljava/lang/Object;

    iget v1, v0, Lᵎˈ/ˈ;->ˊʻ:I

    sget-object v2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    if-ne v1, v3, :cond_5

    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p2, p0, Lᵎˈ/ˑﹳ;->ʽʽ:Lˊʼ/ˏי;

    iget-object v1, p2, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    sget-object v4, Lʿᵔ/ⁱˊ;->ⁱˊ:Lʻᴵ/ﹳٴ;

    if-eq v1, v4, :cond_7

    invoke-static {v1, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    iput-object p1, p2, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    iput v3, v0, Lᵎˈ/ˈ;->ˊʻ:I

    iget-object p2, p0, Lᵎˈ/ˑﹳ;->ᴵˊ:Lᵎˈ/ᵔᵢ;

    invoke-interface {p2, p1, v0}, Lᵎˈ/ᵔᵢ;->ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, p2, :cond_8

    move-object v2, p2

    :cond_8
    :goto_5
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
