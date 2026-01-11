.class public final Lˊﾞ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ﹳٴ:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lˊﾞ/ٴﹶ;->ﹳٴ:Ljava/util/LinkedHashMap;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lˊﾞ/ٴﹶ;->ﹳٴ:Ljava/util/LinkedHashMap;

    return-void

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lˊﾞ/ٴﹶ;->ﹳٴ:Ljava/util/LinkedHashMap;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public ʽ(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .prologue
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lˊﾞ/ٴﹶ;->ﹳٴ:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lˑᵎ/ﾞʻ;

    iget-object v4, v4, Lˑᵎ/ﾞʻ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v4, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˑᵎ/ﾞʻ;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lﹶˈ/ˆʾ;->ʾﾞ(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public ˈ(Lˑᵎ/ﾞʻ;)Lـʾ/ᵔᵢ;
    .locals 1

    iget-object v0, p0, Lˊﾞ/ٴﹶ;->ﹳٴ:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lـʾ/ᵔᵢ;

    return-object p1
.end method

.method public ˑﹳ(Lˑᵎ/ﾞʻ;)Lـʾ/ᵔᵢ;
    .locals 2

    .prologue
    iget-object v0, p0, Lˊﾞ/ٴﹶ;->ﹳٴ:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lـʾ/ᵔᵢ;

    invoke-direct {v1, p1}, Lـʾ/ᵔᵢ;-><init>(Lˑᵎ/ﾞʻ;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v1, Lـʾ/ᵔᵢ;

    return-object v1
.end method

.method public ⁱˊ(Ljava/util/HashMap;)V
    .locals 7

    .prologue
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lˊʼ/ﾞᴵ;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lˊʼ/ﾞᴵ;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lˊʼ/ﾞᴵ;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lˊʼ/ﾞᴵ;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lˊʼ/ﾞᴵ;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lˊʼ/ﾞᴵ;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-class v3, Ljava/lang/String;

    invoke-static {v3}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lˊʼ/ﾞᴵ;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-class v3, [Ljava/lang/Boolean;

    invoke-static {v3}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lˊʼ/ﾞᴵ;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-class v3, [Ljava/lang/Byte;

    invoke-static {v3}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lˊʼ/ﾞᴵ;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-class v3, [Ljava/lang/Integer;

    invoke-static {v3}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lˊʼ/ﾞᴵ;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-class v3, [Ljava/lang/Long;

    invoke-static {v3}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lˊʼ/ﾞᴵ;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-class v3, [Ljava/lang/Float;

    invoke-static {v3}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lˊʼ/ﾞᴵ;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-class v3, [Ljava/lang/Double;

    invoke-static {v3}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lˊʼ/ﾞᴵ;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-class v3, [Ljava/lang/String;

    invoke-static {v3}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lˊʼ/ﾞᴵ;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_7

    :cond_1
    const-class v3, [Z

    invoke-static {v3}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lˊʼ/ﾞᴵ;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    check-cast v0, [Z

    sget-object v2, Lᴵˋ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    array-length v2, v0

    new-array v3, v2, [Ljava/lang/Boolean;

    :goto_1
    if-ge v4, v2, :cond_2

    aget-boolean v5, v0, v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto/16 :goto_7

    :cond_3
    const-class v3, [B

    invoke-static {v3}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lˊʼ/ﾞᴵ;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    check-cast v0, [B

    sget-object v2, Lᴵˋ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    array-length v2, v0

    new-array v3, v2, [Ljava/lang/Byte;

    :goto_2
    if-ge v4, v2, :cond_2

    aget-byte v5, v0, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const-class v3, [I

    invoke-static {v3}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lˊʼ/ﾞᴵ;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    check-cast v0, [I

    sget-object v2, Lᴵˋ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    array-length v2, v0

    new-array v3, v2, [Ljava/lang/Integer;

    :goto_3
    if-ge v4, v2, :cond_2

    aget v5, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    const-class v3, [J

    invoke-static {v3}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lˊʼ/ﾞᴵ;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    check-cast v0, [J

    sget-object v2, Lᴵˋ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    array-length v2, v0

    new-array v3, v2, [Ljava/lang/Long;

    :goto_4
    if-ge v4, v2, :cond_2

    aget-wide v5, v0, v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    const-class v3, [F

    invoke-static {v3}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lˊʼ/ﾞᴵ;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    check-cast v0, [F

    sget-object v2, Lᴵˋ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    array-length v2, v0

    new-array v3, v2, [Ljava/lang/Float;

    :goto_5
    if-ge v4, v2, :cond_2

    aget v5, v0, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    const-class v3, [D

    invoke-static {v3}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lˊʼ/ﾞᴵ;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    check-cast v0, [D

    sget-object v2, Lᴵˋ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    array-length v2, v0

    new-array v3, v2, [Ljava/lang/Double;

    :goto_6
    if-ge v4, v2, :cond_2

    aget-wide v5, v0, v4

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Key "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has invalid type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_7
    iget-object v2, p0, Lˊﾞ/ٴﹶ;->ﹳٴ:Ljava/util/LinkedHashMap;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public ﹳٴ(Lˊﾞ/ˆʾ;)V
    .locals 5

    .prologue
    iget-object v0, p1, Lˊﾞ/ˆʾ;->ˑﹳ:[J

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v2, p0, Lˊﾞ/ٴﹶ;->ﹳٴ:Ljava/util/LinkedHashMap;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lˊﾞ/ˆʾ;->ˑﹳ:[J

    aget-wide v3, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
