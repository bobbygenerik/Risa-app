.class public final Lʿᵢ/ٴﹶ;
.super Lᴵʾ/ᵔᵢ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﾞʻ;


# instance fields
.field public final synthetic ˆﾞ:Lˏˆ/ﹳٴ;

.field public ˉٴ:Ljava/lang/Object;

.field public ˊʻ:Ljava/io/Serializable;

.field public ٴʼ:I

.field public ٴᵢ:Ljava/lang/Object;

.field public ᴵᵔ:Ljava/lang/Object;

.field public ᵎˊ:I

.field public ᵎⁱ:Ljava/util/Iterator;

.field public final synthetic ᵔי:Lʿᵢ/ˈٴ;


# direct methods
.method public constructor <init>(Lʿᵢ/ˈٴ;Lˏˆ/ﹳٴ;Lˈי/ˈ;)V
    .locals 0

    iput-object p1, p0, Lʿᵢ/ٴﹶ;->ᵔי:Lʿᵢ/ˈٴ;

    iput-object p2, p0, Lʿᵢ/ٴﹶ;->ˆﾞ:Lˏˆ/ﹳٴ;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    iget v0, p0, Lʿᵢ/ٴﹶ;->ᵎˊ:I

    iget-object v1, p0, Lʿᵢ/ٴﹶ;->ˆﾞ:Lˏˆ/ﹳٴ;

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    iget-object v5, p0, Lʿᵢ/ٴﹶ;->ᵔי:Lʿᵢ/ˈٴ;

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-object v8, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lʿᵢ/ٴﹶ;->ٴʼ:I

    iget-object v1, p0, Lʿᵢ/ٴﹶ;->ᴵᵔ:Ljava/lang/Object;

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lʿᵢ/ٴﹶ;->ٴᵢ:Ljava/lang/Object;

    check-cast v0, Lﹶי/ﹳٴ;

    iget-object v1, p0, Lʿᵢ/ٴﹶ;->ˊʻ:Ljava/io/Serializable;

    check-cast v1, Lˊʼ/ˏי;

    iget-object v3, p0, Lʿᵢ/ٴﹶ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v3, Lˊʼ/ᵔﹳ;

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    iget-object v0, p0, Lʿᵢ/ٴﹶ;->ᵎⁱ:Ljava/util/Iterator;

    iget-object v9, p0, Lʿᵢ/ٴﹶ;->ˉٴ:Ljava/lang/Object;

    check-cast v9, Lʿᵢ/ˆʾ;

    iget-object v10, p0, Lʿᵢ/ٴﹶ;->ٴᵢ:Ljava/lang/Object;

    check-cast v10, Lˊʼ/ˏי;

    iget-object v11, p0, Lʿᵢ/ٴﹶ;->ˊʻ:Ljava/io/Serializable;

    check-cast v11, Lˊʼ/ᵔﹳ;

    iget-object v12, p0, Lʿᵢ/ٴﹶ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v12, Lﹶי/ﹳٴ;

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lʿᵢ/ٴﹶ;->ˉٴ:Ljava/lang/Object;

    check-cast v0, Lˊʼ/ˏי;

    iget-object v9, p0, Lʿᵢ/ٴﹶ;->ٴᵢ:Ljava/lang/Object;

    check-cast v9, Lˊʼ/ˏי;

    iget-object v10, p0, Lʿᵢ/ٴﹶ;->ˊʻ:Ljava/io/Serializable;

    check-cast v10, Lˊʼ/ᵔﹳ;

    iget-object v11, p0, Lʿᵢ/ٴﹶ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v11, Lﹶי/ﹳٴ;

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    invoke-static {}, Lﹶי/ˈ;->ﹳٴ()Lﹶי/ʽ;

    move-result-object v11

    new-instance v10, Lˊʼ/ᵔﹳ;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lˊʼ/ˏי;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v11, p0, Lʿᵢ/ٴﹶ;->ᴵᵔ:Ljava/lang/Object;

    iput-object v10, p0, Lʿᵢ/ٴﹶ;->ˊʻ:Ljava/io/Serializable;

    iput-object v0, p0, Lʿᵢ/ٴﹶ;->ٴᵢ:Ljava/lang/Object;

    iput-object v0, p0, Lʿᵢ/ٴﹶ;->ˉٴ:Ljava/lang/Object;

    iput v6, p0, Lʿᵢ/ٴﹶ;->ᵎˊ:I

    invoke-static {v5, v6, p0}, Lʿᵢ/ˈٴ;->ᵎﹶ(Lʿᵢ/ˈٴ;ZLᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v8, :cond_5

    goto/16 :goto_6

    :cond_5
    move-object v9, v0

    :goto_0
    check-cast p1, Lʿᵢ/ʽ;

    iget-object p1, p1, Lʿᵢ/ʽ;->ⁱˊ:Ljava/lang/Object;

    iput-object p1, v0, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    new-instance p1, Lʿᵢ/ˆʾ;

    invoke-direct {p1, v11, v10, v9, v5}, Lʿᵢ/ˆʾ;-><init>(Lﹶי/ﹳٴ;Lˊʼ/ᵔﹳ;Lˊʼ/ˏי;Lʿᵢ/ˈٴ;)V

    iget-object v0, v1, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, p1

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lᴵⁱ/ʼᐧ;

    iput-object v12, p0, Lʿᵢ/ٴﹶ;->ᴵᵔ:Ljava/lang/Object;

    iput-object v11, p0, Lʿᵢ/ٴﹶ;->ˊʻ:Ljava/io/Serializable;

    iput-object v10, p0, Lʿᵢ/ٴﹶ;->ٴᵢ:Ljava/lang/Object;

    iput-object v9, p0, Lʿᵢ/ٴﹶ;->ˉٴ:Ljava/lang/Object;

    iput-object v0, p0, Lʿᵢ/ٴﹶ;->ᵎⁱ:Ljava/util/Iterator;

    iput v4, p0, Lʿᵢ/ٴﹶ;->ᵎˊ:I

    invoke-interface {p1, v9, p0}, Lᴵⁱ/ʼᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v8, :cond_6

    goto :goto_6

    :cond_7
    move-object v9, v10

    move-object v10, v11

    move-object v0, v12

    goto :goto_2

    :cond_8
    move-object v0, v11

    :goto_2
    iput-object v7, v1, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    iput-object v10, p0, Lʿᵢ/ٴﹶ;->ᴵᵔ:Ljava/lang/Object;

    iput-object v9, p0, Lʿᵢ/ٴﹶ;->ˊʻ:Ljava/io/Serializable;

    iput-object v0, p0, Lʿᵢ/ٴﹶ;->ٴᵢ:Ljava/lang/Object;

    iput-object v7, p0, Lʿᵢ/ٴﹶ;->ˉٴ:Ljava/lang/Object;

    iput-object v7, p0, Lʿᵢ/ٴﹶ;->ᵎⁱ:Ljava/util/Iterator;

    iput v3, p0, Lʿᵢ/ٴﹶ;->ᵎˊ:I

    invoke-interface {v0, p0}, Lﹶי/ﹳٴ;->ʽ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v8, :cond_9

    goto :goto_6

    :cond_9
    move-object v1, v9

    move-object v3, v10

    :goto_3
    :try_start_0
    iput-boolean v6, v3, Lˊʼ/ᵔﹳ;->ʾˋ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, v7}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    iget-object v1, v1, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_4
    move v0, p1

    goto :goto_5

    :cond_a
    const/4 p1, 0x0

    goto :goto_4

    :goto_5
    invoke-virtual {v5}, Lʿᵢ/ˈٴ;->ᵔᵢ()Lʿᵢ/ˑٴ;

    move-result-object p1

    iput-object v1, p0, Lʿᵢ/ٴﹶ;->ᴵᵔ:Ljava/lang/Object;

    iput-object v7, p0, Lʿᵢ/ٴﹶ;->ˊʻ:Ljava/io/Serializable;

    iput-object v7, p0, Lʿᵢ/ٴﹶ;->ٴᵢ:Ljava/lang/Object;

    iput v0, p0, Lʿᵢ/ٴﹶ;->ٴʼ:I

    iput v2, p0, Lʿᵢ/ٴﹶ;->ᵎˊ:I

    invoke-interface {p1, p0}, Lʿᵢ/ˑٴ;->ˈ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v8, :cond_b

    :goto_6
    return-object v8

    :cond_b
    :goto_7
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    new-instance v2, Lʿᵢ/ʽ;

    invoke-direct {v2, v0, p1, v1}, Lʿᵢ/ʽ;-><init>(IILjava/lang/Object;)V

    return-object v2

    :catchall_0
    move-exception p1

    invoke-interface {v0, v7}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    throw p1
.end method

.method public final ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lˈי/ˈ;

    new-instance v0, Lʿᵢ/ٴﹶ;

    iget-object v1, p0, Lʿᵢ/ٴﹶ;->ᵔי:Lʿᵢ/ˈٴ;

    iget-object v2, p0, Lʿᵢ/ٴﹶ;->ˆﾞ:Lˏˆ/ﹳٴ;

    invoke-direct {v0, v1, v2, p1}, Lʿᵢ/ٴﹶ;-><init>(Lʿᵢ/ˈٴ;Lˏˆ/ﹳٴ;Lˈי/ˈ;)V

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {v0, p1}, Lʿᵢ/ٴﹶ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
