.class public final Lʿᵢ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:Lˊʼ/ˏי;

.field public final synthetic ˈ:Lʿᵢ/ˈٴ;

.field public final synthetic ⁱˊ:Lˊʼ/ᵔﹳ;

.field public final synthetic ﹳٴ:Lﹶי/ﹳٴ;


# direct methods
.method public constructor <init>(Lﹶי/ﹳٴ;Lˊʼ/ᵔﹳ;Lˊʼ/ˏי;Lʿᵢ/ˈٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʿᵢ/ˆʾ;->ﹳٴ:Lﹶי/ﹳٴ;

    iput-object p2, p0, Lʿᵢ/ˆʾ;->ⁱˊ:Lˊʼ/ᵔﹳ;

    iput-object p3, p0, Lʿᵢ/ˆʾ;->ʽ:Lˊʼ/ˏי;

    iput-object p4, p0, Lʿᵢ/ˆʾ;->ˈ:Lʿᵢ/ˈٴ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lʿᵢ/ﾞᴵ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 9

    .prologue
    instance-of v0, p2, Lʿᵢ/ʼˎ;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lʿᵢ/ʼˎ;

    iget v1, v0, Lʿᵢ/ʼˎ;->ᵎˊ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lʿᵢ/ʼˎ;->ᵎˊ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lʿᵢ/ʼˎ;

    invoke-direct {v0, p0, p2}, Lʿᵢ/ʼˎ;-><init>(Lʿᵢ/ˆʾ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p2, v0, Lʿᵢ/ʼˎ;->ᵎⁱ:Ljava/lang/Object;

    iget v1, v0, Lʿᵢ/ʼˎ;->ᵎˊ:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v6, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Lʿᵢ/ʼˎ;->ˊʻ:Ljava/lang/Object;

    iget-object v1, v0, Lʿᵢ/ʼˎ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lˊʼ/ˏי;

    iget-object v0, v0, Lʿᵢ/ʼˎ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lﹶי/ﹳٴ;

    :try_start_0
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lʿᵢ/ʼˎ;->ˊʻ:Ljava/lang/Object;

    check-cast p1, Lʿᵢ/ˈٴ;

    iget-object v1, v0, Lʿᵢ/ʼˎ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lˊʼ/ˏי;

    iget-object v3, v0, Lʿᵢ/ʼˎ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Lﹶי/ﹳٴ;

    :try_start_1
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v0, v3

    goto/16 :goto_6

    :cond_3
    iget-object p1, v0, Lʿᵢ/ʼˎ;->ˉٴ:Lʿᵢ/ˈٴ;

    iget-object v1, v0, Lʿᵢ/ʼˎ;->ٴᵢ:Lˊʼ/ˏי;

    iget-object v4, v0, Lʿᵢ/ʼˎ;->ˊʻ:Ljava/lang/Object;

    check-cast v4, Lˊʼ/ᵔﹳ;

    iget-object v7, v0, Lʿᵢ/ʼˎ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v7, Lﹶי/ﹳٴ;

    iget-object v8, v0, Lʿᵢ/ʼˎ;->ˈٴ:Ljava/lang/Object;

    check-cast v8, Lᴵⁱ/ʼᐧ;

    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    move-object p2, v8

    move-object v8, p1

    move-object p1, p2

    move-object p2, v7

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iput-object p1, v0, Lʿᵢ/ʼˎ;->ˈٴ:Ljava/lang/Object;

    iget-object p2, p0, Lʿᵢ/ˆʾ;->ﹳٴ:Lﹶי/ﹳٴ;

    iput-object p2, v0, Lʿᵢ/ʼˎ;->ᴵᵔ:Ljava/lang/Object;

    iget-object v1, p0, Lʿᵢ/ˆʾ;->ⁱˊ:Lˊʼ/ᵔﹳ;

    iput-object v1, v0, Lʿᵢ/ʼˎ;->ˊʻ:Ljava/lang/Object;

    iget-object v7, p0, Lʿᵢ/ˆʾ;->ʽ:Lˊʼ/ˏי;

    iput-object v7, v0, Lʿᵢ/ʼˎ;->ٴᵢ:Lˊʼ/ˏי;

    iget-object v8, p0, Lʿᵢ/ˆʾ;->ˈ:Lʿᵢ/ˈٴ;

    iput-object v8, v0, Lʿᵢ/ʼˎ;->ˉٴ:Lʿᵢ/ˈٴ;

    iput v4, v0, Lʿᵢ/ʼˎ;->ᵎˊ:I

    invoke-interface {p2, v0}, Lﹶי/ﹳٴ;->ʽ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_5

    goto :goto_3

    :cond_5
    move-object v4, v1

    move-object v1, v7

    :goto_1
    :try_start_2
    iget-boolean v4, v4, Lˊʼ/ᵔﹳ;->ʾˋ:Z

    if-nez v4, :cond_9

    iget-object v4, v1, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    iput-object p2, v0, Lʿᵢ/ʼˎ;->ˈٴ:Ljava/lang/Object;

    iput-object v1, v0, Lʿᵢ/ʼˎ;->ᴵᵔ:Ljava/lang/Object;

    iput-object v8, v0, Lʿᵢ/ʼˎ;->ˊʻ:Ljava/lang/Object;

    iput-object v5, v0, Lʿᵢ/ʼˎ;->ٴᵢ:Lˊʼ/ˏי;

    iput-object v5, v0, Lʿᵢ/ʼˎ;->ˉٴ:Lʿᵢ/ˈٴ;

    iput v3, v0, Lʿᵢ/ʼˎ;->ᵎˊ:I

    invoke-interface {p1, v4, v0}, Lᴵⁱ/ʼᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne p1, v6, :cond_6

    goto :goto_3

    :cond_6
    move-object v3, p2

    move-object p2, p1

    move-object p1, v8

    :goto_2
    :try_start_3
    iget-object v4, v1, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    invoke-static {p2, v4}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iput-object v3, v0, Lʿᵢ/ʼˎ;->ˈٴ:Ljava/lang/Object;

    iput-object v1, v0, Lʿᵢ/ʼˎ;->ᴵᵔ:Ljava/lang/Object;

    iput-object p2, v0, Lʿᵢ/ʼˎ;->ˊʻ:Ljava/lang/Object;

    iput v2, v0, Lʿᵢ/ʼˎ;->ᵎˊ:I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v0}, Lʿᵢ/ˈٴ;->ٴﹶ(Ljava/lang/Object;ZLᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne p1, v6, :cond_7

    :goto_3
    return-object v6

    :cond_7
    move-object p1, p2

    move-object v0, v3

    :goto_4
    :try_start_4
    iput-object p1, v1, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    goto :goto_5

    :cond_8
    move-object v0, v3

    :goto_5
    iget-object p1, v1, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v0, v5}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    return-object p1

    :catchall_2
    move-exception p1

    move-object v0, p2

    goto :goto_6

    :cond_9
    :try_start_5
    const-string p1, "InitializerApi.updateData should not be called after initialization is complete."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_6
    invoke-interface {v0, v5}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    throw p1
.end method
