.class public final Lᴵʼ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Lᴵʼ/ᵔᵢ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lᴵʼ/ᵔᵢ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lᴵʼ/ᵔᵢ;->ﹳٴ:Lᴵʼ/ᵔᵢ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;Lˊᐧ/ʻٴ;)V
    .locals 6

    .prologue
    check-cast p1, Lᴵʼ/ⁱˊ;

    invoke-virtual {p1}, Lᴵʼ/ⁱˊ;->ﹳٴ()Ljava/util/Map;

    move-result-object p1

    invoke-static {}, Lˏᵢ/ˈ;->ᵔʾ()Lˏᵢ/ⁱˊ;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lᴵʼ/ˑﹳ;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v2, Lᴵʼ/ˑﹳ;->ﹳٴ:Ljava/lang/String;

    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    invoke-static {}, Lˏᵢ/ᵔᵢ;->ˈٴ()Lˏᵢ/ᵎﹶ;

    move-result-object v3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˏי;->ˈ()V

    iget-object v4, v3, Landroidx/datastore/preferences/protobuf/ˏי;->ᴵˊ:Landroidx/datastore/preferences/protobuf/ʻٴ;

    check-cast v4, Lˏᵢ/ᵔᵢ;

    invoke-static {v4, v1}, Lˏᵢ/ᵔᵢ;->ᵔﹳ(Lˏᵢ/ᵔᵢ;Z)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˏי;->ﹳٴ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object v1

    check-cast v1, Lˏᵢ/ᵔᵢ;

    goto/16 :goto_1

    :cond_0
    instance-of v3, v1, Ljava/lang/Float;

    if-eqz v3, :cond_1

    invoke-static {}, Lˏᵢ/ᵔᵢ;->ˈٴ()Lˏᵢ/ᵎﹶ;

    move-result-object v3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˏי;->ˈ()V

    iget-object v4, v3, Landroidx/datastore/preferences/protobuf/ˏי;->ᴵˊ:Landroidx/datastore/preferences/protobuf/ʻٴ;

    check-cast v4, Lˏᵢ/ᵔᵢ;

    invoke-static {v4, v1}, Lˏᵢ/ᵔᵢ;->ﹳᐧ(Lˏᵢ/ᵔᵢ;F)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˏי;->ﹳٴ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object v1

    check-cast v1, Lˏᵢ/ᵔᵢ;

    goto/16 :goto_1

    :cond_1
    instance-of v3, v1, Ljava/lang/Double;

    if-eqz v3, :cond_2

    invoke-static {}, Lˏᵢ/ᵔᵢ;->ˈٴ()Lˏᵢ/ᵎﹶ;

    move-result-object v3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˏי;->ˈ()V

    iget-object v1, v3, Landroidx/datastore/preferences/protobuf/ˏי;->ᴵˊ:Landroidx/datastore/preferences/protobuf/ʻٴ;

    check-cast v1, Lˏᵢ/ᵔᵢ;

    invoke-static {v1, v4, v5}, Lˏᵢ/ᵔᵢ;->ˉˆ(Lˏᵢ/ᵔᵢ;D)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˏי;->ﹳٴ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object v1

    check-cast v1, Lˏᵢ/ᵔᵢ;

    goto/16 :goto_1

    :cond_2
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    invoke-static {}, Lˏᵢ/ᵔᵢ;->ˈٴ()Lˏᵢ/ᵎﹶ;

    move-result-object v3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˏי;->ˈ()V

    iget-object v4, v3, Landroidx/datastore/preferences/protobuf/ˏי;->ᴵˊ:Landroidx/datastore/preferences/protobuf/ʻٴ;

    check-cast v4, Lˏᵢ/ᵔᵢ;

    invoke-static {v4, v1}, Lˏᵢ/ᵔᵢ;->יـ(Lˏᵢ/ᵔᵢ;I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˏי;->ﹳٴ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object v1

    check-cast v1, Lˏᵢ/ᵔᵢ;

    goto/16 :goto_1

    :cond_3
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_4

    invoke-static {}, Lˏᵢ/ᵔᵢ;->ˈٴ()Lˏᵢ/ᵎﹶ;

    move-result-object v3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˏי;->ˈ()V

    iget-object v1, v3, Landroidx/datastore/preferences/protobuf/ˏי;->ᴵˊ:Landroidx/datastore/preferences/protobuf/ʻٴ;

    check-cast v1, Lˏᵢ/ᵔᵢ;

    invoke-static {v1, v4, v5}, Lˏᵢ/ᵔᵢ;->ﾞʻ(Lˏᵢ/ᵔᵢ;J)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˏי;->ﹳٴ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object v1

    check-cast v1, Lˏᵢ/ᵔᵢ;

    goto :goto_1

    :cond_4
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-static {}, Lˏᵢ/ᵔᵢ;->ˈٴ()Lˏᵢ/ᵎﹶ;

    move-result-object v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˏי;->ˈ()V

    iget-object v4, v3, Landroidx/datastore/preferences/protobuf/ˏי;->ᴵˊ:Landroidx/datastore/preferences/protobuf/ʻٴ;

    check-cast v4, Lˏᵢ/ᵔᵢ;

    invoke-static {v4, v1}, Lˏᵢ/ᵔᵢ;->ˉʿ(Lˏᵢ/ᵔᵢ;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˏי;->ﹳٴ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object v1

    check-cast v1, Lˏᵢ/ᵔᵢ;

    goto :goto_1

    :cond_5
    instance-of v3, v1, Ljava/util/Set;

    if-eqz v3, :cond_6

    invoke-static {}, Lˏᵢ/ᵔᵢ;->ˈٴ()Lˏᵢ/ᵎﹶ;

    move-result-object v3

    invoke-static {}, Lˏᵢ/ﾞᴵ;->ˉˆ()Lˏᵢ/ˑﹳ;

    move-result-object v4

    check-cast v1, Ljava/util/Set;

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ˏי;->ˈ()V

    iget-object v5, v4, Landroidx/datastore/preferences/protobuf/ˏי;->ᴵˊ:Landroidx/datastore/preferences/protobuf/ʻٴ;

    check-cast v5, Lˏᵢ/ﾞᴵ;

    invoke-static {v5, v1}, Lˏᵢ/ﾞᴵ;->ﾞʻ(Lˏᵢ/ﾞᴵ;Ljava/util/Set;)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˏי;->ˈ()V

    iget-object v1, v3, Landroidx/datastore/preferences/protobuf/ˏי;->ᴵˊ:Landroidx/datastore/preferences/protobuf/ʻٴ;

    check-cast v1, Lˏᵢ/ᵔᵢ;

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ˏי;->ﹳٴ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object v4

    check-cast v4, Lˏᵢ/ﾞᴵ;

    invoke-static {v1, v4}, Lˏᵢ/ᵔᵢ;->ᵔʾ(Lˏᵢ/ᵔᵢ;Lˏᵢ/ﾞᴵ;)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˏי;->ﹳٴ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object v1

    check-cast v1, Lˏᵢ/ᵔᵢ;

    goto :goto_1

    :cond_6
    instance-of v3, v1, [B

    if-eqz v3, :cond_7

    invoke-static {}, Lˏᵢ/ᵔᵢ;->ˈٴ()Lˏᵢ/ᵎﹶ;

    move-result-object v3

    check-cast v1, [B

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ˈ([BII)Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    move-result-object v1

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˏי;->ˈ()V

    iget-object v4, v3, Landroidx/datastore/preferences/protobuf/ˏי;->ᴵˊ:Landroidx/datastore/preferences/protobuf/ʻٴ;

    check-cast v4, Lˏᵢ/ᵔᵢ;

    invoke-static {v4, v1}, Lˏᵢ/ᵔᵢ;->ʼᐧ(Lˏᵢ/ᵔᵢ;Landroidx/datastore/preferences/protobuf/ᵎﹶ;)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˏי;->ﹳٴ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object v1

    check-cast v1, Lˏᵢ/ᵔᵢ;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˏי;->ˈ()V

    iget-object v3, v0, Landroidx/datastore/preferences/protobuf/ˏי;->ᴵˊ:Landroidx/datastore/preferences/protobuf/ʻٴ;

    check-cast v3, Lˏᵢ/ˈ;

    invoke-static {v3}, Lˏᵢ/ˈ;->ﾞʻ(Lˏᵢ/ˈ;)Landroidx/datastore/preferences/protobuf/ˊʻ;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroidx/datastore/preferences/protobuf/ˊʻ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PreferencesSerializer does not support type: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˏי;->ﹳٴ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object p1

    check-cast p1, Lˏᵢ/ˈ;

    new-instance v0, Lʿᵢ/ʻˋ;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Lʿᵢ/ʻˋ;-><init>(Lˊᐧ/ᵎﹶ;I)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ﹳٴ(Landroidx/datastore/preferences/protobuf/ʼˈ;)I

    move-result p2

    sget-object v1, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉˆ:Ljava/util/logging/Logger;

    const/16 v1, 0x1000

    if-le p2, v1, :cond_9

    move p2, v1

    :cond_9
    new-instance v1, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-direct {v1, v0, p2}, Landroidx/datastore/preferences/protobuf/ﾞʻ;-><init>(Ljava/io/OutputStream;I)V

    invoke-virtual {p1, v1}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ⁱˊ(Landroidx/datastore/preferences/protobuf/ﾞʻ;)V

    iget p1, v1, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉʿ:I

    if-lez p1, :cond_a

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎˊ()V

    :cond_a
    return-void
.end method

.method public final ﹳٴ(Lˊᐧ/ـˆ;)Lᴵʼ/ⁱˊ;
    .locals 6

    .prologue
    new-instance v0, Lˊᐧ/ˑﹳ;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lˊᐧ/ˑﹳ;-><init>(ILjava/lang/Object;)V

    :try_start_0
    invoke-static {v0}, Lˏᵢ/ˈ;->ˉˆ(Ljava/io/InputStream;)Lˏᵢ/ˈ;

    move-result-object p1
    :try_end_0
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    new-array v1, v0, [Lᴵʼ/ﾞᴵ;

    new-instance v2, Lᴵʼ/ⁱˊ;

    invoke-direct {v2, v0}, Lᴵʼ/ⁱˊ;-><init>(Z)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lᴵʼ/ﾞᴵ;

    invoke-virtual {v2}, Lᴵʼ/ⁱˊ;->ⁱˊ()V

    array-length v3, v1

    const/4 v4, 0x0

    if-gtz v3, :cond_3

    invoke-virtual {p1}, Lˏᵢ/ˈ;->ˉʿ()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˏᵢ/ᵔᵢ;

    invoke-virtual {v0}, Lˏᵢ/ᵔᵢ;->ʽʽ()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, -0x1

    goto :goto_1

    :cond_0
    sget-object v5, Lᴵʼ/ᵎﹶ;->ﹳٴ:[I

    invoke-static {v3}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v3

    aget v3, v5, v3

    :goto_1
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_1
    new-instance p1, Landroidx/datastore/core/CorruptionException;

    const-string v0, "Value not set."

    invoke-direct {p1, v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :pswitch_2
    new-instance v3, Lᴵʼ/ˑﹳ;

    invoke-direct {v3, v1}, Lᴵʼ/ˑﹳ;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lˏᵢ/ᵔᵢ;->ʽﹳ()Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->size()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Landroidx/datastore/preferences/protobuf/ʾᵎ;->ⁱˊ:[B

    goto :goto_2

    :cond_1
    new-array v5, v1, [B

    invoke-virtual {v0, v1, v5}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ˑﹳ(I[B)V

    move-object v0, v5

    :goto_2
    invoke-virtual {v2, v3, v0}, Lᴵʼ/ⁱˊ;->ʽ(Lᴵʼ/ˑﹳ;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    new-instance v3, Lᴵʼ/ˑﹳ;

    invoke-direct {v3, v1}, Lᴵʼ/ˑﹳ;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lˏᵢ/ᵔᵢ;->ᴵˊ()Lˏᵢ/ﾞᴵ;

    move-result-object v0

    invoke-virtual {v0}, Lˏᵢ/ﾞᴵ;->ᵔʾ()Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v0

    invoke-static {v0}, Lﹶˈ/ˆʾ;->ᐧˎ(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lᴵʼ/ⁱˊ;->ʽ(Lᴵʼ/ˑﹳ;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    new-instance v3, Lᴵʼ/ˑﹳ;

    invoke-direct {v3, v1}, Lᴵʼ/ˑﹳ;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lˏᵢ/ᵔᵢ;->ʾˋ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lᴵʼ/ⁱˊ;->ʽ(Lᴵʼ/ˑﹳ;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    new-instance v3, Lᴵʼ/ˑﹳ;

    invoke-direct {v3, v1}, Lᴵʼ/ˑﹳ;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lˏᵢ/ᵔᵢ;->ᵢˏ()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lᴵʼ/ⁱˊ;->ʽ(Lᴵʼ/ˑﹳ;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_6
    new-instance v3, Lᴵʼ/ˑﹳ;

    invoke-direct {v3, v1}, Lᴵʼ/ˑﹳ;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lˏᵢ/ᵔᵢ;->ʼʼ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lᴵʼ/ⁱˊ;->ʽ(Lᴵʼ/ˑﹳ;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_7
    new-instance v3, Lᴵʼ/ˑﹳ;

    invoke-direct {v3, v1}, Lᴵʼ/ˑﹳ;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lˏᵢ/ᵔᵢ;->ـˆ()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lᴵʼ/ⁱˊ;->ʽ(Lᴵʼ/ˑﹳ;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v3, Lᴵʼ/ˑﹳ;

    invoke-direct {v3, v1}, Lᴵʼ/ˑﹳ;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lˏᵢ/ᵔᵢ;->ʾᵎ()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lᴵʼ/ⁱˊ;->ʽ(Lᴵʼ/ˑﹳ;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v3, Lᴵʼ/ˑﹳ;

    invoke-direct {v3, v1}, Lᴵʼ/ˑﹳ;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lˏᵢ/ᵔᵢ;->ˏי()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lᴵʼ/ⁱˊ;->ʽ(Lᴵʼ/ˑﹳ;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_a
    new-instance p1, Landroidx/datastore/core/CorruptionException;

    const-string v0, "Value case is null."

    invoke-direct {p1, v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p1, Lᴵʼ/ⁱˊ;

    invoke-virtual {v2}, Lᴵʼ/ⁱˊ;->ﹳٴ()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const/4 v0, 0x1

    invoke-direct {p1, v1, v0}, Lᴵʼ/ⁱˊ;-><init>(Ljava/util/LinkedHashMap;Z)V

    return-object p1

    :cond_3
    aget-object p1, v1, v0

    throw v4

    :catch_0
    move-exception p1

    new-instance v0, Landroidx/datastore/core/CorruptionException;

    const-string v1, "Unable to parse preferences proto."

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
