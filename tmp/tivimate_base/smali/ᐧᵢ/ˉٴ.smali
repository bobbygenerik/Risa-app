.class public final Lᐧᵢ/ˉٴ;
.super Lᐧᵢ/ʿᵢ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:I

.field public final ˈ:Ljava/lang/reflect/Method;

.field public final ˑﹳ:I

.field public final ᵎﹶ:Ljava/lang/Object;

.field public final ﾞᴵ:Lᐧᵢ/ﾞʻ;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;ILˎᵢ/ˉˆ;Lᐧᵢ/ﾞʻ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lᐧᵢ/ˉٴ;->ʽ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᐧᵢ/ˉٴ;->ˈ:Ljava/lang/reflect/Method;

    iput p2, p0, Lᐧᵢ/ˉٴ;->ˑﹳ:I

    iput-object p3, p0, Lᐧᵢ/ˉٴ;->ᵎﹶ:Ljava/lang/Object;

    iput-object p4, p0, Lᐧᵢ/ˉٴ;->ﾞᴵ:Lᐧᵢ/ﾞʻ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;ILᐧᵢ/ﾞʻ;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lᐧᵢ/ˉٴ;->ʽ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᐧᵢ/ˉٴ;->ˈ:Ljava/lang/reflect/Method;

    iput p2, p0, Lᐧᵢ/ˉٴ;->ˑﹳ:I

    iput-object p3, p0, Lᐧᵢ/ˉٴ;->ﾞᴵ:Lᐧᵢ/ﾞʻ;

    iput-object p4, p0, Lᐧᵢ/ˉٴ;->ᵎﹶ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lᐧᵢ/ˑٴ;Ljava/lang/Object;)V
    .locals 10

    .prologue
    iget v0, p0, Lᐧᵢ/ˉٴ;->ʽ:I

    iget-object v1, p0, Lᐧᵢ/ˉٴ;->ﾞᴵ:Lᐧᵢ/ﾞʻ;

    iget-object v2, p0, Lᐧᵢ/ˉٴ;->ᵎﹶ:Ljava/lang/Object;

    iget-object v3, p0, Lᐧᵢ/ˉٴ;->ˈ:Ljava/lang/reflect/Method;

    iget v4, p0, Lᐧᵢ/ˉٴ;->ˑﹳ:I

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    check-cast p2, Ljava/util/Map;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v7, "form-data; name=\""

    const-string v8, "\""

    invoke-static {v7, v6, v8}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Content-Transfer-Encoding"

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    const-string v9, "Content-Disposition"

    filled-new-array {v9, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lˈˆ/ﾞᴵ;->ᵎˊ([Ljava/lang/String;)Lˎᵢ/ˉˆ;

    move-result-object v6

    invoke-interface {v1, v0}, Lᐧᵢ/ﾞʻ;->ˆʾ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˎᵢ/ʾˋ;

    invoke-virtual {p1, v6, v0}, Lᐧᵢ/ˑٴ;->ʽ(Lˎᵢ/ˉˆ;Lˎᵢ/ʾˋ;)V

    goto :goto_0

    :cond_0
    const-string p1, "Part map contained null value for key \'"

    const-string p2, "\'."

    invoke-static {p1, v6, p2}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, p1, p2}, Lᐧᵢ/ʿᵢ;->ˉʿ(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_1
    const-string p1, "Part map contained null key."

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, p1, p2}, Lᐧᵢ/ʿᵢ;->ˉʿ(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_2
    return-void

    :cond_3
    const-string p1, "Part map was null."

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, p1, p2}, Lᐧᵢ/ʿᵢ;->ˉʿ(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :pswitch_0
    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    :try_start_0
    invoke-interface {v1, p2}, Lᐧᵢ/ﾞʻ;->ˆʾ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˎᵢ/ʾˋ;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v2, Lˎᵢ/ˉˆ;

    invoke-virtual {p1, v2, v0}, Lᐧᵢ/ˑٴ;->ʽ(Lˎᵢ/ˉˆ;Lˎᵢ/ʾˋ;)V

    :goto_1
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to convert "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to RequestBody"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v5

    invoke-static {v3, v4, p2, v0}, Lᐧᵢ/ʿᵢ;->ˉʿ(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
