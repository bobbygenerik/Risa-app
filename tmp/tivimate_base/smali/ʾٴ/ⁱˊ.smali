.class public final Lʾٴ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:Ljava/lang/Object;

.field public ʽ:Ljava/lang/Object;

.field public ˈ:Ljava/lang/Object;

.field public ˑﹳ:Ljava/lang/Object;

.field public ᵎﹶ:Ljava/lang/Object;

.field public ᵔᵢ:Ljava/lang/Object;

.field public ⁱˊ:Ljava/lang/Object;

.field public ﹳٴ:Ljava/lang/Object;

.field public ﾞᴵ:Ljava/lang/Object;


# direct methods
.method public static ˈ(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .prologue
    invoke-static {p1}, Lʻٴ/ᵎﹶ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FirebaseCrashlytics"

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    nop

    :cond_0
    return-void
.end method


# virtual methods
.method public ʽ(Lˉˋ/ʼˎ;I)V
    .locals 48

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    iget-object v2, v3, Lˉˋ/ʼˎ;->ⁱˊ:[B

    iget-object v0, v1, Lʾٴ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lʻˎ/ⁱˊ;

    iget-object v0, v1, Lʾٴ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lﹳˑ/ˈ;

    iget-object v5, v3, Lˉˋ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lﹳˑ/ˈ;->ﹳٴ(Ljava/lang/String;)Lﹳˑ/ˑﹳ;

    move-result-object v5

    move-object v8, v4

    move-object v9, v5

    const-wide/16 v4, 0x0

    :goto_0
    new-instance v0, Lٴᐧ/ﾞᴵ;

    const/4 v10, 0x0

    invoke-direct {v0, v1, v3, v10}, Lٴᐧ/ﾞᴵ;-><init>(Lʾٴ/ⁱˊ;Lˉˋ/ʼˎ;I)V

    move-object v11, v8

    check-cast v11, Lᵔـ/ᵔᵢ;

    invoke-virtual {v11, v0}, Lᵔـ/ᵔᵢ;->ʾˋ(Lʻˎ/ﹳٴ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Lٴᐧ/ﾞᴵ;

    const/4 v12, 0x1

    invoke-direct {v0, v1, v3, v12}, Lٴᐧ/ﾞᴵ;-><init>(Lʾٴ/ⁱˊ;Lˉˋ/ʼˎ;I)V

    invoke-virtual {v11, v0}, Lᵔـ/ᵔᵢ;->ʾˋ(Lʻˎ/ﹳٴ;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/Iterable;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v15, 0x2

    const/4 v0, 0x3

    const-wide/16 v6, -0x1

    if-nez v9, :cond_1

    const-string v10, "Uploader"

    const-string v12, "Unknown backend for %s, deleting event batch for it..."

    invoke-static {v10, v12, v3}, Lˉᵎ/ⁱˊ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v10, Lﹳˑ/ﹳٴ;

    invoke-direct {v10, v0, v6, v7}, Lﹳˑ/ﹳٴ;-><init>(IJ)V

    move-object/from16 v21, v2

    move-wide/from16 v32, v4

    move v1, v15

    goto/16 :goto_15

    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Lᵔـ/ⁱˊ;

    iget-object v0, v0, Lᵔـ/ⁱˊ;->ʽ:Lˉˋ/ᵔᵢ;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const-string v0, "proto"

    if-eqz v2, :cond_3

    iget-object v6, v1, Lʾٴ/ⁱˊ;->ʼˎ:Ljava/lang/Object;

    check-cast v6, Lᵔـ/ʽ;

    invoke-static {v6}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lٴˉ/ﹳٴ;

    invoke-direct {v7, v15, v6}, Lٴˉ/ﹳٴ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v11, v7}, Lᵔـ/ᵔᵢ;->ʾˋ(Lʻˎ/ﹳٴ;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lˆ/ﹳٴ;

    new-instance v7, Lʼי/ﹳٴ;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    iput-object v15, v7, Lʼי/ﹳٴ;->ᵎﹶ:Ljava/lang/Object;

    iget-object v15, v1, Lʾٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v15, Lﹳᵔ/ﹳٴ;

    invoke-interface {v15}, Lﹳᵔ/ﹳٴ;->ᵔʾ()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iput-object v15, v7, Lʼי/ﹳٴ;->ˑﹳ:Ljava/lang/Object;

    iget-object v15, v1, Lʾٴ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v15, Lﹳᵔ/ﹳٴ;

    invoke-interface {v15}, Lﹳᵔ/ﹳٴ;->ᵔʾ()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iput-object v15, v7, Lʼי/ﹳٴ;->ﾞᴵ:Ljava/lang/Object;

    const-string v15, "GDT_CLIENT_METRICS"

    iput-object v15, v7, Lʼי/ﹳٴ;->ʽ:Ljava/lang/Object;

    new-instance v15, Lˉˋ/ﾞʻ;

    new-instance v14, Lᴵˆ/ⁱˊ;

    invoke-direct {v14, v0}, Lᴵˆ/ⁱˊ;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lˉˋ/ᵔʾ;->ﹳٴ:Lˑי/ʽ;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {v10, v6, v1}, Lˑי/ʽ;->ʾᵎ(Lˆ/ﹳٴ;Ljava/io/ByteArrayOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v15, v14, v1}, Lˉˋ/ﾞʻ;-><init>(Lᴵˆ/ⁱˊ;[B)V

    iput-object v15, v7, Lʼי/ﹳٴ;->ˈ:Ljava/lang/Object;

    invoke-virtual {v7}, Lʼי/ﹳٴ;->ⁱˊ()Lˉˋ/ᵔᵢ;

    move-result-object v1

    move-object v6, v9

    check-cast v6, Lٴי/ⁱˊ;

    invoke-virtual {v6, v1}, Lٴי/ⁱˊ;->ﹳٴ(Lˉˋ/ᵔᵢ;)Lˉˋ/ᵔᵢ;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v1, v9

    check-cast v1, Lٴי/ⁱˊ;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v7, :cond_5

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v10, v10, 0x1

    check-cast v14, Lˉˋ/ᵔᵢ;

    iget-object v15, v14, Lˉˋ/ᵔᵢ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    move-object/from16 v21, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    move-object/from16 v21, v2

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object/from16 v2, v21

    goto :goto_2

    :cond_5
    move-object/from16 v21, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v12, "CctTransportBackend"

    if-eqz v7, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lˉˋ/ᵔᵢ;

    sget-object v20, Lᐧٴ/ٴʼ;->ʾˋ:Lᐧٴ/ٴʼ;

    iget-object v10, v1, Lٴי/ⁱˊ;->ﾞᴵ:Lﹳᵔ/ﹳٴ;

    invoke-interface {v10}, Lﹳᵔ/ﹳٴ;->ᵔʾ()J

    move-result-wide v23

    iget-object v10, v1, Lٴי/ⁱˊ;->ˑﹳ:Lﹳᵔ/ﹳٴ;

    invoke-interface {v10}, Lﹳᵔ/ﹳٴ;->ᵔʾ()J

    move-result-wide v25

    const-string v10, "sdk-version"

    invoke-virtual {v14, v10}, Lˉˋ/ᵔᵢ;->ⁱˊ(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const-string v10, "model"

    invoke-virtual {v14, v10}, Lˉˋ/ᵔᵢ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v10, "hardware"

    invoke-virtual {v14, v10}, Lˉˋ/ᵔᵢ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v10, "device"

    invoke-virtual {v14, v10}, Lˉˋ/ᵔᵢ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v10, "product"

    invoke-virtual {v14, v10}, Lˉˋ/ᵔᵢ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v10, "os-uild"

    invoke-virtual {v14, v10}, Lˉˋ/ᵔᵢ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v10, "manufacturer"

    invoke-virtual {v14, v10}, Lˉˋ/ᵔᵢ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v10, "fingerprint"

    invoke-virtual {v14, v10}, Lˉˋ/ᵔᵢ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v10, "country"

    invoke-virtual {v14, v10}, Lˉˋ/ᵔᵢ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v10, "locale"

    invoke-virtual {v14, v10}, Lˉˋ/ᵔᵢ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string v10, "mcc_mnc"

    invoke-virtual {v14, v10}, Lˉˋ/ᵔᵢ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string v10, "application_build"

    invoke-virtual {v14, v10}, Lˉˋ/ᵔᵢ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    new-instance v27, Lᐧٴ/ﾞʻ;

    invoke-direct/range {v27 .. v39}, Lᐧٴ/ﾞʻ;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v10, v27

    new-instance v14, Lᐧٴ/ᵔʾ;

    invoke-direct {v14, v10}, Lᐧٴ/ᵔʾ;-><init>(Lᐧٴ/ﾞʻ;)V

    :try_start_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v28, v10

    const/16 v29, 0x0

    goto :goto_5

    :catch_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v29, v10

    const/16 v28, 0x0

    :goto_5
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v15, v22

    check-cast v15, Lˉˋ/ᵔᵢ;

    iget-object v3, v15, Lˉˋ/ᵔᵢ;->ʽ:Lˉˋ/ﾞʻ;

    move-wide/from16 v32, v4

    iget-object v4, v15, Lˉˋ/ᵔᵢ;->ˆʾ:[B

    iget-object v5, v3, Lˉˋ/ﾞʻ;->ﹳٴ:Lᴵˆ/ⁱˊ;

    iget-object v3, v3, Lˉˋ/ﾞʻ;->ⁱˊ:[B

    move-object/from16 v22, v4

    new-instance v4, Lᴵˆ/ⁱˊ;

    invoke-direct {v4, v0}, Lᴵˆ/ⁱˊ;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lᴵˆ/ⁱˊ;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Lʾٴ/ⁱˊ;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v4, Lʾٴ/ⁱˊ;->ˑﹳ:Ljava/lang/Object;

    move-object/from16 v34, v0

    :goto_7
    move-object v0, v6

    goto :goto_8

    :cond_6
    new-instance v4, Lᴵˆ/ⁱˊ;

    move-object/from16 v34, v0

    const-string v0, "json"

    invoke-direct {v4, v0}, Lᴵˆ/ⁱˊ;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lᴵˆ/ⁱˊ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v4, Lʾٴ/ⁱˊ;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v0, v4, Lʾٴ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    goto :goto_7

    :goto_8
    iget-wide v5, v15, Lˉˋ/ᵔᵢ;->ˈ:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v4, Lʾٴ/ⁱˊ;->ﹳٴ:Ljava/lang/Object;

    iget-wide v5, v15, Lˉˋ/ᵔᵢ;->ˑﹳ:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v4, Lʾٴ/ⁱˊ;->ˈ:Ljava/lang/Object;

    const-string v3, "tz-offset"

    iget-object v5, v15, Lˉˋ/ᵔᵢ;->ﾞᴵ:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_7

    const-wide/16 v5, 0x0

    goto :goto_9

    :cond_7
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_9
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v4, Lʾٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    const-string v3, "net-type"

    invoke-virtual {v15, v3}, Lˉˋ/ᵔᵢ;->ⁱˊ(Ljava/lang/String;)I

    move-result v3

    sget-object v5, Lᐧٴ/ˉٴ;->ʾˋ:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lᐧٴ/ˉٴ;

    const-string v5, "mobile-subtype"

    invoke-virtual {v15, v5}, Lˉˋ/ᵔᵢ;->ⁱˊ(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Lᐧٴ/ٴᵢ;->ʾˋ:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lᐧٴ/ٴᵢ;

    new-instance v6, Lᐧٴ/ʻٴ;

    invoke-direct {v6, v3, v5}, Lᐧٴ/ʻٴ;-><init>(Lᐧٴ/ˉٴ;Lᐧٴ/ٴᵢ;)V

    iput-object v6, v4, Lʾٴ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    iget-object v3, v15, Lˉˋ/ᵔᵢ;->ⁱˊ:Ljava/lang/Integer;

    if-eqz v3, :cond_8

    iput-object v3, v4, Lʾٴ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    :cond_8
    iget-object v3, v15, Lˉˋ/ᵔᵢ;->ᵎﹶ:Ljava/lang/Integer;

    if-eqz v3, :cond_9

    new-instance v5, Lᐧٴ/ᵔﹳ;

    invoke-direct {v5, v3}, Lᐧٴ/ᵔﹳ;-><init>(Ljava/lang/Integer;)V

    new-instance v3, Lᐧٴ/ﹳᐧ;

    invoke-direct {v3, v5}, Lᐧٴ/ﹳᐧ;-><init>(Lᐧٴ/ᵔﹳ;)V

    sget-object v5, Lᐧٴ/ᵢˏ;->ʾˋ:Lᐧٴ/ᵢˏ;

    new-instance v5, Lᐧٴ/ˉˆ;

    invoke-direct {v5, v3}, Lᐧٴ/ˉˆ;-><init>(Lᐧٴ/ﹳᐧ;)V

    iput-object v5, v4, Lʾٴ/ⁱˊ;->ʽ:Ljava/lang/Object;

    :cond_9
    iget-object v3, v15, Lˉˋ/ᵔᵢ;->ʼˎ:[B

    if-nez v3, :cond_a

    if-eqz v22, :cond_d

    :cond_a
    if-eqz v3, :cond_b

    goto :goto_a

    :cond_b
    const/4 v3, 0x0

    :goto_a
    if-eqz v22, :cond_c

    move-object/from16 v5, v22

    goto :goto_b

    :cond_c
    const/4 v5, 0x0

    :goto_b
    new-instance v6, Lᐧٴ/ʼᐧ;

    invoke-direct {v6, v3, v5}, Lᐧٴ/ʼᐧ;-><init>([B[B)V

    iput-object v6, v4, Lʾٴ/ⁱˊ;->ʼˎ:Ljava/lang/Object;

    :cond_d
    iget-object v3, v4, Lʾٴ/ⁱˊ;->ﹳٴ:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_e

    const-string v3, " eventTimeMs"

    goto :goto_c

    :cond_e
    const-string v3, ""

    :goto_c
    iget-object v5, v4, Lʾٴ/ⁱˊ;->ˈ:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    if-nez v5, :cond_f

    const-string v5, " eventUptimeMs"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_f
    iget-object v5, v4, Lʾٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    if-nez v5, :cond_10

    const-string v5, " timezoneOffsetSeconds"

    invoke-static {v3, v5}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_10
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_12

    new-instance v35, Lᐧٴ/יـ;

    iget-object v3, v4, Lʾٴ/ⁱˊ;->ﹳٴ:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    iget-object v3, v4, Lʾٴ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    move-object/from16 v38, v3

    check-cast v38, Ljava/lang/Integer;

    iget-object v3, v4, Lʾٴ/ⁱˊ;->ʽ:Ljava/lang/Object;

    move-object/from16 v39, v3

    check-cast v39, Lᐧٴ/ˉˆ;

    iget-object v3, v4, Lʾٴ/ⁱˊ;->ˈ:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    iget-object v3, v4, Lʾٴ/ⁱˊ;->ˑﹳ:Ljava/lang/Object;

    move-object/from16 v42, v3

    check-cast v42, [B

    iget-object v3, v4, Lʾٴ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    move-object/from16 v43, v3

    check-cast v43, Ljava/lang/String;

    iget-object v3, v4, Lʾٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v44

    iget-object v3, v4, Lʾٴ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    move-object/from16 v46, v3

    check-cast v46, Lᐧٴ/ʻٴ;

    iget-object v3, v4, Lʾٴ/ⁱˊ;->ʼˎ:Ljava/lang/Object;

    move-object/from16 v47, v3

    check-cast v47, Lᐧٴ/ʼᐧ;

    invoke-direct/range {v35 .. v47}, Lᐧٴ/יـ;-><init>(JLjava/lang/Integer;Lᐧٴ/ʾˋ;J[BLjava/lang/String;JLᐧٴ/ᵎⁱ;Lᐧٴ/ᴵˊ;)V

    move-object/from16 v3, v35

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_d
    move-object/from16 v3, p1

    move-object v6, v0

    move-wide/from16 v4, v32

    move-object/from16 v0, v34

    const/4 v15, 0x0

    goto/16 :goto_6

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move-object v0, v6

    invoke-static {v12}, Lˉᵎ/ⁱˊ;->ʼʼ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Received event of unsupported encoding "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ". Skipping..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    goto :goto_d

    :cond_14
    move-object/from16 v34, v0

    move-wide/from16 v32, v4

    move-object v0, v6

    new-instance v22, Lᐧٴ/ˏי;

    move-object/from16 v30, v10

    move-object/from16 v27, v14

    invoke-direct/range {v22 .. v30}, Lᐧٴ/ˏי;-><init>(JJLᐧٴ/ᵔʾ;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object/from16 v3, v22

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p1

    move-object/from16 v0, v34

    goto/16 :goto_4

    :cond_15
    move-wide/from16 v32, v4

    new-instance v0, Lᐧٴ/ˉʿ;

    invoke-direct {v0, v2}, Lᐧٴ/ˉʿ;-><init>(Ljava/util/ArrayList;)V

    iget-object v2, v1, Lٴי/ⁱˊ;->ˈ:Ljava/net/URL;

    if-eqz v21, :cond_17

    :try_start_2
    invoke-static/range {v21 .. v21}, Lٴי/ﹳٴ;->ﹳٴ([B)Lٴי/ﹳٴ;

    move-result-object v3

    iget-object v4, v3, Lٴי/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    if-eqz v4, :cond_16

    goto :goto_e

    :cond_16
    const/4 v4, 0x0

    :goto_e
    iget-object v3, v3, Lٴי/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    if-eqz v3, :cond_18

    invoke-static {v3}, Lٴי/ⁱˊ;->ⁱˊ(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_11

    :catch_2
    new-instance v0, Lﹳˑ/ﹳٴ;

    const/4 v1, 0x3

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lﹳˑ/ﹳٴ;-><init>(IJ)V

    :goto_f
    move-object v10, v0

    :goto_10
    const/4 v1, 0x2

    goto/16 :goto_15

    :cond_17
    const/4 v4, 0x0

    :cond_18
    :goto_11
    :try_start_3
    new-instance v3, Lˑי/ʽ;

    invoke-direct {v3, v2, v0, v4}, Lˑי/ʽ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lٴˉ/ﹳٴ;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lٴˉ/ﹳٴ;-><init>(ILjava/lang/Object;)V

    const/4 v4, 0x5

    :cond_19
    invoke-virtual {v0, v3}, Lٴˉ/ﹳٴ;->ٴﹶ(Lˑי/ʽ;)Lˈـ/ـˆ;

    move-result-object v1

    iget-object v2, v1, Lˈـ/ـˆ;->ʽ:Ljava/lang/Object;

    check-cast v2, Ljava/net/URL;

    if-eqz v2, :cond_1a

    const-string v5, "Following redirect to: %s"

    invoke-static {v12, v5, v2}, Lˉᵎ/ⁱˊ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v5, Lˑי/ʽ;

    iget-object v6, v3, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v6, Lᐧٴ/ˉʿ;

    iget-object v3, v3, Lˑי/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v2, v6, v3}, Lˑי/ʽ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v5

    goto :goto_12

    :cond_1a
    const/4 v3, 0x0

    :goto_12
    if-eqz v3, :cond_1b

    add-int/lit8 v4, v4, -0x1

    const/4 v2, 0x1

    if-ge v4, v2, :cond_19

    :cond_1b
    iget v0, v1, Lˈـ/ـˆ;->ﹳٴ:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1c

    iget-wide v0, v1, Lˈـ/ـˆ;->ⁱˊ:J

    new-instance v2, Lﹳˑ/ﹳٴ;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0, v1}, Lﹳˑ/ﹳٴ;-><init>(IJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v10, v2

    goto :goto_10

    :catch_3
    move-exception v0

    goto :goto_14

    :cond_1c
    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_1d

    const/16 v1, 0x194

    if-ne v0, v1, :cond_1e

    :cond_1d
    const-wide/16 v2, -0x1

    goto :goto_13

    :cond_1e
    const/16 v1, 0x190

    if-ne v0, v1, :cond_1f

    :try_start_4
    new-instance v0, Lﹳˑ/ﹳٴ;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    const/4 v1, 0x4

    const-wide/16 v2, -0x1

    :try_start_5
    invoke-direct {v0, v1, v2, v3}, Lﹳˑ/ﹳٴ;-><init>(IJ)V

    goto :goto_f

    :catch_4
    move-exception v0

    const-wide/16 v2, -0x1

    goto :goto_14

    :cond_1f
    const-wide/16 v2, -0x1

    new-instance v0, Lﹳˑ/ﹳٴ;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v3}, Lﹳˑ/ﹳٴ;-><init>(IJ)V

    goto :goto_f

    :goto_13
    new-instance v0, Lﹳˑ/ﹳٴ;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2, v3}, Lﹳˑ/ﹳٴ;-><init>(IJ)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_f

    :goto_14
    const-string v1, "Could not make request to the backend"

    invoke-static {v12, v1, v0}, Lˉᵎ/ⁱˊ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v0, Lﹳˑ/ﹳٴ;

    const/4 v1, 0x2

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lﹳˑ/ﹳٴ;-><init>(IJ)V

    move-object v10, v0

    :goto_15
    iget v0, v10, Lﹳˑ/ﹳٴ;->ﹳٴ:I

    if-ne v0, v1, :cond_20

    new-instance v0, Lˏᐧ/ʽ;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object v2, v13

    move-wide/from16 v4, v32

    invoke-direct/range {v0 .. v5}, Lˏᐧ/ʽ;-><init>(Lʾٴ/ⁱˊ;Ljava/lang/Iterable;Lˉˋ/ʼˎ;J)V

    invoke-virtual {v11, v0}, Lᵔـ/ᵔᵢ;->ʾˋ(Lʻˎ/ﹳٴ;)Ljava/lang/Object;

    iget-object v0, v1, Lʾٴ/ⁱˊ;->ˈ:Ljava/lang/Object;

    check-cast v0, Lcom/parse/ٴʼ;

    const/4 v2, 0x1

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v0, v3, v4, v2}, Lcom/parse/ٴʼ;->ʻᵎ(Lˉˋ/ʼˎ;IZ)V

    return-void

    :cond_20
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object v6, v13

    move-wide/from16 v4, v32

    const/4 v2, 0x1

    new-instance v7, Lʻʿ/ʽ;

    const/4 v12, 0x5

    invoke-direct {v7, v1, v12, v6}, Lʻʿ/ʽ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v11, v7}, Lᵔـ/ᵔᵢ;->ʾˋ(Lʻˎ/ﹳٴ;)Ljava/lang/Object;

    if-ne v0, v2, :cond_21

    iget-wide v6, v10, Lﹳˑ/ﹳٴ;->ⁱˊ:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    if-eqz v21, :cond_24

    new-instance v0, Lٴˉ/ﹳٴ;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lٴˉ/ﹳٴ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v11, v0}, Lᵔـ/ᵔᵢ;->ʾˋ(Lʻˎ/ﹳٴ;)Ljava/lang/Object;

    goto :goto_17

    :cond_21
    const/4 v2, 0x4

    if-ne v0, v2, :cond_24

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lᵔـ/ⁱˊ;

    iget-object v6, v6, Lᵔـ/ⁱˊ;->ʽ:Lˉˋ/ᵔᵢ;

    iget-object v6, v6, Lˉˋ/ᵔᵢ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_22

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_22
    const/16 v16, 0x1

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_23
    new-instance v2, Lʻʿ/ʽ;

    const/4 v6, 0x6

    invoke-direct {v2, v1, v6, v0}, Lʻʿ/ʽ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v11, v2}, Lᵔـ/ᵔᵢ;->ʾˋ(Lʻˎ/ﹳٴ;)Ljava/lang/Object;

    :cond_24
    :goto_17
    move-object/from16 v2, v21

    goto/16 :goto_0

    :cond_25
    new-instance v0, Lיˎ/ﹳٴ;

    invoke-direct {v0, v4, v5, v1, v3}, Lיˎ/ﹳٴ;-><init>(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v11, v0}, Lᵔـ/ᵔᵢ;->ʾˋ(Lʻˎ/ﹳٴ;)Ljava/lang/Object;

    return-void
.end method

.method public ⁱˊ()Lʾٴ/ﹳٴ;
    .locals 1

    iget-object v0, p0, Lʾٴ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʾٴ/ﹳٴ;

    return-object v0
.end method

.method public ﹳٴ(I)Lʾٴ/ﹳٴ;
    .locals 8

    .prologue
    const-string v0, "FirebaseCrashlytics"

    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, p1}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lʾٴ/ⁱˊ;->ˑﹳ:Ljava/lang/Object;

    check-cast v3, Lﹳי/ʽ;

    invoke-virtual {v3}, Lﹳי/ʽ;->ʾᵎ()Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x3

    if-eqz v3, :cond_2

    iget-object v5, p0, Lʾٴ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast v5, Lﹳי/ʽ;

    invoke-virtual {v5, v3}, Lﹳי/ʽ;->ʻٴ(Lorg/json/JSONObject;)Lʾٴ/ﹳٴ;

    move-result-object v5

    const-string v6, "Loaded cached settings: "

    invoke-static {v3, v6}, Lʾٴ/ⁱˊ;->ˈ(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object v3, p0, Lʾٴ/ⁱˊ;->ˈ:Ljava/lang/Object;

    check-cast v3, Lᵔⁱ/ᵔʾ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4, p1}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result p1

    if-nez p1, :cond_0

    iget-wide v3, v5, Lʾٴ/ﹳٴ;->ʽ:J

    cmp-long p1, v3, v6

    if-gez p1, :cond_0

    const-string p1, "Cached settings have expired."

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    const-string p1, "Returning cached settings."

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    return-object v5

    :goto_0
    move-object v2, v5

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_0

    :cond_2
    :try_start_2
    const-string p1, "No cached settings data found."

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    nop
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return-object v2

    :goto_1
    const-string v1, "Failed to get cached settings"

    nop

    return-object v2
.end method
