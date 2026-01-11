.class public final Lcom/google/android/gms/internal/measurement/ˑˉ;
.super Lcom/google/android/gms/internal/measurement/ᵔᵢ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽʽ:I

.field public final ˈٴ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ˏי;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ˑˉ;->ʽʽ:I

    const-string v0, "internal.registerCallback"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/ᵔᵢ;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˑˉ;->ˈٴ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ـʾ;Lˑʼ/ᵎˊ;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/ˑˉ;->ʽʽ:I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ˑˉ;->ˈٴ:Ljava/lang/Object;

    const-string p1, "getValue"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ᵔᵢ;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lᐧﹳ/ʽ;)V
    .locals 6

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ˑˉ;->ʽʽ:I

    const-string v0, "internal.logger"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/ᵔᵢ;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˑˉ;->ˈٴ:Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ᴵˊ:Ljava/util/HashMap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/ʻˎ;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/ʻˎ;-><init>(Lcom/google/android/gms/internal/measurement/ˑˉ;ZZ)V

    const-string v3, "log"

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ᴵˊ:Ljava/util/HashMap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/ـʾ;

    const/4 v4, 0x1

    const-string v5, "silent"

    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/ـʾ;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ᴵˊ:Ljava/util/HashMap;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/ᵔᵢ;

    new-instance v0, Lcom/google/android/gms/internal/measurement/ʻˎ;

    invoke-direct {v0, p0, v2, v2}, Lcom/google/android/gms/internal/measurement/ʻˎ;-><init>(Lcom/google/android/gms/internal/measurement/ˑˉ;ZZ)V

    invoke-virtual {p1, v3, v0}, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ʼˎ(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ᵔʾ;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ᴵˊ:Ljava/util/HashMap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/ـʾ;

    const/4 v2, 0x2

    const-string v4, "unmonitored"

    invoke-direct {v0, v2, v4}, Lcom/google/android/gms/internal/measurement/ـʾ;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ᴵˊ:Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/ᵔᵢ;

    new-instance v0, Lcom/google/android/gms/internal/measurement/ʻˎ;

    invoke-direct {v0, p0, v1, v1}, Lcom/google/android/gms/internal/measurement/ʻˎ;-><init>(Lcom/google/android/gms/internal/measurement/ˑˉ;ZZ)V

    invoke-virtual {p1, v3, v0}, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ʼˎ(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ᵔʾ;)V

    return-void
.end method

.method public constructor <init>(Lᵢ/ﹳٴ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ˑˉ;->ʽʽ:I

    const-string v0, "internal.eventLogger"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/ᵔᵢ;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˑˉ;->ˈٴ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ˊᵔ;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ˑˉ;->ʽʽ:I

    const-string v0, "internal.appMetadata"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/ᵔᵢ;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˑˉ;->ˈٴ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ʽ(Lˏˆ/ﹳٴ;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/ᵔʾ;
    .locals 8

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˑˉ;->ʽʽ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ʾˋ:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v1, v0, p2}, Lˉᵎ/ⁱˊ;->ˑٴ(ILjava/lang/String;Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v1, p1, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ()Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v2, p1, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v1

    instance-of v3, v1, Lcom/google/android/gms/internal/measurement/ˉʿ;

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object p1

    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/ٴﹶ;

    if-eqz p2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/measurement/ٴﹶ;

    iget-object p2, p1, Lcom/google/android/gms/internal/measurement/ٴﹶ;->ʾˋ:Ljava/util/HashMap;

    const-string v2, "type"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/ٴﹶ;->ˈ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ()Ljava/lang/String;

    move-result-object v2

    const-string v3, "priority"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/ٴﹶ;->ˈ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ⁱˊ()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Lˉᵎ/ⁱˊ;->ˈⁱ(D)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x3e8

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/ˑˉ;->ˈٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/measurement/ˏי;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˉʿ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "create"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/ˏי;->ⁱˊ:Ljava/lang/Object;

    check-cast p2, Ljava/util/TreeMap;

    goto :goto_1

    :cond_1
    const-string v3, "edit"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/ˏי;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Ljava/util/TreeMap;

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v0

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ﹳᐧ;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Unknown callback type: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Undefined rule type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid callback params"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid callback type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ˑˉ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Lﹶﾞ/ˊᵔ;

    invoke-virtual {p1}, Lﹶﾞ/ˊᵔ;->call()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lᴵˋ/ˊʻ;->ˑٴ(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ﹳᐧ;

    :goto_2
    return-object p1

    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ﹳᐧ;

    return-object p1

    :pswitch_2
    const-string v0, "getValue"

    const/4 v1, 0x2

    invoke-static {v1, v0, p2}, Lˉᵎ/ⁱˊ;->ˑٴ(ILjava/lang/String;Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v1, p1, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v1, p1, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object p1

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˑˉ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ᵎˊ;

    iget-object v1, v0, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ـﹶ;

    iget-object v1, v1, Lﹶﾞ/ـﹶ;->ˈٴ:Lיـ/ˑﹳ;

    iget-object v0, v0, Lˑʼ/ᵎˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_8

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_4

    :cond_8
    :goto_3
    const/4 p2, 0x0

    :goto_4
    if-eqz p2, :cond_9

    new-instance p1, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/ᵔﹳ;-><init>(Ljava/lang/String;)V

    :cond_9
    return-object p1

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ʾˋ:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v1, v0, p2}, Lˉᵎ/ⁱˊ;->ˑٴ(ILjava/lang/String;Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v1, p1, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v2, p1, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ⁱˊ()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lˉᵎ/ⁱˊ;->ᴵˑ(D)D

    move-result-wide v3

    double-to-long v3, v3

    const/4 v1, 0x2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object p1

    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/ٴﹶ;

    if-eqz p2, :cond_a

    check-cast p1, Lcom/google/android/gms/internal/measurement/ٴﹶ;

    invoke-static {p1}, Lˉᵎ/ⁱˊ;->ʿ(Lcom/google/android/gms/internal/measurement/ٴﹶ;)Ljava/util/HashMap;

    move-result-object p1

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :goto_5
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/ˑˉ;->ˈٴ:Ljava/lang/Object;

    check-cast p2, Lᵢ/ﹳٴ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p2, Lᵢ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ⁱˊ;

    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/ⁱˊ;->ʽ:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    :goto_7
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/google/android/gms/internal/measurement/ⁱˊ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_c
    iget-object p1, p2, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    new-instance p2, Lcom/google/android/gms/internal/measurement/ⁱˊ;

    invoke-direct {p2, v0, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/ⁱˊ;-><init>(Ljava/lang/String;JLjava/util/HashMap;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ﹳᐧ;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
