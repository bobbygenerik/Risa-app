.class public abstract Lٴˑ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v7, "prefix="

    const-string v8, "uncompress="

    const-string v0, "tokenize="

    const-string v1, "compress="

    const-string v2, "content="

    const-string v3, "languageid="

    const-string v4, "matchinfo="

    const-string v5, "notindexed="

    const-string v6, "order="

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lٴˑ/ﾞᴵ;->ﹳٴ:[Ljava/lang/String;

    return-void
.end method

.method public static final ʼˎ(Lﹳᴵ/ﹳٴ;)I
    .locals 2

    .prologue
    const-string v0, "SELECT changes()"

    invoke-interface {p0, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p0, v0}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final ʼᐧ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;Z)Lٴˑ/ʼˎ;
    .locals 13

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PRAGMA index_xinfo(`"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "`)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object p0

    :try_start_0
    const-string v0, "seqno"

    invoke-static {p0, v0}, Lٴˑ/ﾞᴵ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v0

    const-string v1, "cid"

    invoke-static {p0, v1}, Lٴˑ/ﾞᴵ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    const-string v2, "name"

    invoke-static {p0, v2}, Lٴˑ/ﾞᴵ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v2

    const-string v3, "desc"

    invoke-static {p0, v3}, Lٴˑ/ﾞᴵ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v0, v4, :cond_6

    if-eq v1, v4, :cond_6

    if-eq v2, v4, :cond_6

    if-ne v3, v4, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_0
    invoke-interface {p0}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p0, v1}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    if-gez v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-interface {p0, v2}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    const-string v9, "DESC"

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_2
    const-string v9, "ASC"

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lʻٴ/ˑﹳ;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lʻٴ/ˑﹳ;-><init>(I)V

    invoke-static {v0, v1}, Lﹶˈ/ˆʾ;->ʼـ(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lﹶˈ/ﾞʻ;->ᐧᴵ(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {v1}, Lﹶˈ/ˆʾ;->ʾﾞ(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v3, Lʻٴ/ˑﹳ;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Lʻٴ/ˑﹳ;-><init>(I)V

    invoke-static {v1, v3}, Lﹶˈ/ˆʾ;->ʼـ(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lﹶˈ/ﾞʻ;->ᐧᴵ(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-static {v3}, Lﹶˈ/ˆʾ;->ʾﾞ(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lٴˑ/ʼˎ;

    invoke-direct {v2, p1, p2, v0, v1}, Lٴˑ/ʼˎ;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, v5}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v2

    :cond_6
    :goto_4
    invoke-static {p0, v5}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v5

    :goto_5
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static final ʽ(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    move v0, v2

    move v3, v0

    move v4, v3

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v6, v4, 0x1

    const/16 v7, 0x28

    if-nez v4, :cond_2

    if-eq v5, v7, :cond_2

    goto :goto_2

    :cond_2
    if-eq v5, v7, :cond_4

    const/16 v7, 0x29

    if-eq v5, v7, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    if-eq v4, v5, :cond_5

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v4, v6

    goto :goto_0

    :cond_6
    if-nez v3, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lﹶˑ/ˆʾ;->ˋˊ(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_7
    :goto_2
    return v2
.end method

.method public static final ˆʾ(Ljava/lang/String;)Ljava/util/Set;
    .locals 13

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lﹶˈ/ﹳᐧ;->ʾˋ:Lﹶˈ/ﹳᐧ;

    return-object p0

    :cond_0
    const/16 v0, 0x28

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v2}, Lﹶˑ/ˆʾ;->ˑʼ(Ljava/lang/CharSequence;CII)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    const/16 v4, 0x29

    invoke-static {p0, v4, v1, v2}, Lﹶˑ/ˆʾ;->י(Ljava/lang/String;CII)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lﹶˈ/ᵔᵢ;

    invoke-direct {v2}, Lﹶˈ/ᵔᵢ;-><init>()V

    const/4 v4, -0x1

    move v5, v1

    move v6, v5

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_11

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v6, 0x1

    const/16 v9, 0x22

    const/4 v10, 0x0

    if-eq v7, v9, :cond_c

    const/16 v9, 0x27

    if-eq v7, v9, :cond_c

    const/16 v9, 0x2c

    if-eq v7, v9, :cond_5

    const/16 v6, 0x5b

    if-eq v7, v6, :cond_4

    const/16 v9, 0x5d

    if-eq v7, v9, :cond_1

    const/16 v6, 0x60

    if-eq v7, v6, :cond_c

    goto/16 :goto_7

    :cond_1
    invoke-virtual {v2}, Lﹶˈ/ᵔᵢ;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual {v2}, Lﹶˈ/ᵔᵢ;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    iget-object v7, v2, Lﹶˈ/ᵔᵢ;->ᴵˊ:[Ljava/lang/Object;

    iget v9, v2, Lﹶˈ/ᵔᵢ;->ʾˋ:I

    aget-object v10, v7, v9

    :goto_1
    check-cast v10, Ljava/lang/Character;

    if-nez v10, :cond_3

    goto/16 :goto_7

    :cond_3
    invoke-virtual {v10}, Ljava/lang/Character;->charValue()C

    move-result v7

    if-ne v7, v6, :cond_10

    invoke-static {v2}, Lﹶˈ/ˆʾ;->ʾˊ(Ljava/util/AbstractList;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_4
    invoke-virtual {v2}, Lﹶˈ/ᵔᵢ;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v2, v6}, Lﹶˈ/ᵔᵢ;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_5
    invoke-virtual {v2}, Lﹶˈ/ᵔᵢ;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_10

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v3

    move v9, v1

    move v10, v9

    :goto_2
    if-gt v9, v7, :cond_b

    if-nez v10, :cond_6

    move v11, v9

    goto :goto_3

    :cond_6
    move v11, v7

    :goto_3
    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x20

    invoke-static {v11, v12}, Lˊʼ/ˆʾ;->ˈ(II)I

    move-result v11

    if-gtz v11, :cond_7

    move v11, v3

    goto :goto_4

    :cond_7
    move v11, v1

    :goto_4
    if-nez v10, :cond_9

    if-nez v11, :cond_8

    move v10, v3

    goto :goto_2

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_9
    if-nez v11, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_b
    :goto_5
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_7

    :cond_c
    invoke-virtual {v2}, Lﹶˈ/ᵔᵢ;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v2, v6}, Lﹶˈ/ᵔᵢ;->addFirst(Ljava/lang/Object;)V

    goto :goto_7

    :cond_d
    invoke-virtual {v2}, Lﹶˈ/ᵔᵢ;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_6

    :cond_e
    iget-object v6, v2, Lﹶˈ/ᵔᵢ;->ᴵˊ:[Ljava/lang/Object;

    iget v9, v2, Lﹶˈ/ᵔᵢ;->ʾˋ:I

    aget-object v10, v6, v9

    :goto_6
    check-cast v10, Ljava/lang/Character;

    if-nez v10, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {v10}, Ljava/lang/Character;->charValue()C

    move-result v6

    if-ne v6, v7, :cond_10

    invoke-static {v2}, Lﹶˈ/ˆʾ;->ʾˊ(Ljava/util/AbstractList;)Ljava/lang/Object;

    :cond_10
    :goto_7
    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto/16 :goto_0

    :cond_11
    add-int/2addr v4, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lﹶˑ/ˆʾ;->ˋˊ(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :cond_12
    :goto_8
    if-ge v3, v2, :cond_14

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    move v6, v1

    :goto_9
    const/16 v7, 0x9

    if-ge v6, v7, :cond_12

    sget-object v7, Lٴˑ/ﾞᴵ;->ﹳٴ:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-static {v5, v7, v1}, Lﹶˑ/ᵔﹳ;->ᵎᵔ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_14
    invoke-static {p0}, Lﹶˈ/ˆʾ;->ᐧˎ(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final ˈ(Lﹳᴵ/ﹳٴ;)V
    .locals 4

    .prologue
    invoke-static {}, Lˈˊ/ᵔʾ;->ᵎﹶ()Lⁱˏ/ʽ;

    move-result-object v0

    const-string v1, "SELECT name FROM sqlite_master WHERE type = \'trigger\'"

    invoke-interface {p0, v1}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-interface {v1}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lⁱˏ/ʽ;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lˈˊ/ᵔʾ;->ﹳٴ(Lⁱˏ/ʽ;)Lⁱˏ/ʽ;

    move-result-object v0

    invoke-virtual {v0, v3}, Lⁱˏ/ʽ;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_1
    :goto_1
    move-object v1, v0

    check-cast v1, Lⁱˏ/ﹳٴ;

    invoke-virtual {v1}, Lⁱˏ/ﹳٴ;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lⁱˏ/ﹳٴ;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "room_fts_content_sync_"

    invoke-static {v1, v2, v3}, Lﹶˑ/ᵔﹳ;->ᵎᵔ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void

    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, p0}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static ˉʿ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)Lٴˑ/ˑﹳ;
    .locals 4

    .prologue
    new-instance v0, Lⁱˏ/ʼˎ;

    invoke-direct {v0}, Lⁱˏ/ʼˎ;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PRAGMA table_info(`"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "`)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "name"

    invoke-static {v1, v2}, Lٴˑ/ﾞᴵ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v2

    :cond_0
    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lⁱˏ/ʼˎ;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lˈˋ/ʾˊ;->ˈ(Lⁱˏ/ʼˎ;)Lⁱˏ/ʼˎ;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM sqlite_master WHERE `name` = \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object p0

    :try_start_1
    invoke-interface {p0}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "sql"

    invoke-static {p0, v1}, Lٴˑ/ﾞᴵ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_2
    const-string v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    invoke-static {p0, v2}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lٴˑ/ﾞᴵ;->ˆʾ(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    new-instance v1, Lٴˑ/ˑﹳ;

    invoke-direct {v1, p1, v0, p0}, Lٴˑ/ˑﹳ;-><init>(Ljava/lang/String;Ljava/util/AbstractSet;Ljava/util/Set;)V

    return-object v1

    :goto_2
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {p0, p1}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v1, p0}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final ˉˆ(Lﹳᴵ/ʽ;)Ljava/util/List;
    .locals 10

    .prologue
    const-string v0, "id"

    invoke-static {p0, v0}, Lٴˑ/ﾞᴵ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v0

    const-string v1, "seq"

    invoke-static {p0, v1}, Lٴˑ/ﾞᴵ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    const-string v2, "from"

    invoke-static {p0, v2}, Lٴˑ/ﾞᴵ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v2

    const-string v3, "to"

    invoke-static {p0, v3}, Lٴˑ/ﾞᴵ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lˈˊ/ᵔʾ;->ᵎﹶ()Lⁱˏ/ʽ;

    move-result-object v4

    :goto_0
    invoke-interface {p0}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lٴˑ/ˈ;

    invoke-interface {p0, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-interface {p0, v1}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-interface {p0, v2}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v3}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lٴˑ/ˈ;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lⁱˏ/ʽ;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lˈˊ/ᵔʾ;->ﹳٴ(Lⁱˏ/ʽ;)Lⁱˏ/ʽ;

    move-result-object p0

    invoke-static {p0}, Lﹶˈ/ˆʾ;->ˑ(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final ˑﹳ(Ljava/util/Collection;)Ljava/lang/String;
    .locals 7

    .prologue
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x38

    const-string v2, ",\n"

    const-string v3, "\n"

    const-string v4, "\n"

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lﹶˈ/ˆʾ;->ᵎʻ(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lᴵⁱ/ﾞʻ;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lﹶˑ/ٴﹶ;->ʼˈ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "},"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, " }"

    return-object p0
.end method

.method public static final ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;
    .locals 6

    .prologue
    invoke-virtual {p0}, Lʼﾞ/ˊʻ;->ﹳٴ()V

    invoke-virtual {p0}, Lʼﾞ/ˊʻ;->ˆʾ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lʼﾞ/ˊʻ;->ٴﹶ()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lʼﾞ/ˊʻ;->ʼˎ:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Lٴˑ/ⁱˊ;

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lٴˑ/ⁱˊ;-><init>(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;Lˈי/ˈ;)V

    invoke-static {v0}, Lˉᵎ/ⁱˊ;->ᵎˊ(Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final ᵎﹶ(Lʼﾞ/ˊʻ;ZLᴵʾ/ʽ;)Lˈי/ᵔᵢ;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lʼﾞ/ˊʻ;->ˆʾ()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object p2

    sget-object v0, Lʼﾞ/ᵔٴ;->ʾˋ:Lᵎˉ/ⁱˊ;

    invoke-interface {p2, v0}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object p2

    if-nez p2, :cond_3

    if-eqz p1, :cond_1

    iget-object p0, p0, Lʼﾞ/ˊʻ;->ⁱˊ:Lˈי/ᵔᵢ;

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    return-object p0

    :cond_1
    iget-object p0, p0, Lʼﾞ/ˊʻ;->ﹳٴ:Lˊʽ/ˈ;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lˊʽ/ˈ;->ʾˋ:Lˈי/ᵔᵢ;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_4
    iget-object p0, p0, Lʼﾞ/ˊʻ;->ﹳٴ:Lˊʽ/ˈ;

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    move-object v1, p0

    :goto_1
    iget-object p0, v1, Lˊʽ/ˈ;->ʾˋ:Lˈי/ᵔᵢ;

    return-object p0
.end method

.method public static ᵔʾ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)Lٴˑ/ˆʾ;
    .locals 31

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PRAGMA table_info(`"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "`)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x0

    const-string v7, "name"

    const/4 v10, 0x0

    if-nez v4, :cond_0

    :try_start_1
    sget-object v4, Lﹶˈ/ᵔﹳ;->ʾˋ:Lﹶˈ/ᵔﹳ;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v10}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    move-wide/from16 v23, v5

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_e

    :cond_0
    :try_start_2
    invoke-static {v2, v7}, Lٴˑ/ﾞᴵ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v4

    const-string v11, "type"

    invoke-static {v2, v11}, Lٴˑ/ﾞᴵ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v11

    const-string v12, "notnull"

    invoke-static {v2, v12}, Lٴˑ/ﾞᴵ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v12

    const-string v13, "pk"

    invoke-static {v2, v13}, Lٴˑ/ﾞᴵ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v13

    const-string v14, "dflt_value"

    invoke-static {v2, v14}, Lٴˑ/ﾞᴵ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v14

    new-instance v15, Lⁱˏ/ﾞᴵ;

    invoke-direct {v15}, Lⁱˏ/ﾞᴵ;-><init>()V

    :goto_0
    invoke-interface {v2, v4}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface {v2, v11}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface {v2, v12}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v16

    cmp-long v16, v16, v5

    if-eqz v16, :cond_1

    const/16 v22, 0x1

    :goto_1
    move-wide/from16 v23, v5

    goto :goto_2

    :cond_1
    const/16 v22, 0x0

    goto :goto_1

    :goto_2
    invoke-interface {v2, v13}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-interface {v2, v14}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object/from16 v21, v10

    goto :goto_3

    :cond_2
    invoke-interface {v2, v14}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v21, v6

    :goto_3
    new-instance v16, Lٴˑ/ᵎﹶ;

    const/16 v18, 0x2

    move/from16 v17, v5

    invoke-direct/range {v16 .. v22}, Lٴˑ/ᵎﹶ;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v6, v16

    move-object/from16 v5, v19

    invoke-virtual {v15, v5, v6}, Lⁱˏ/ﾞᴵ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v15}, Lⁱˏ/ﾞᴵ;->ⁱˊ()Lⁱˏ/ﾞᴵ;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v10}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "PRAGMA foreign_key_list(`"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    :try_start_3
    const-string v5, "id"

    invoke-static {v2, v5}, Lٴˑ/ﾞᴵ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v5

    const-string v6, "seq"

    invoke-static {v2, v6}, Lٴˑ/ﾞᴵ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v6

    const-string v11, "table"

    invoke-static {v2, v11}, Lٴˑ/ﾞᴵ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v11

    const-string v12, "on_delete"

    invoke-static {v2, v12}, Lٴˑ/ﾞᴵ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v12

    const-string v13, "on_update"

    invoke-static {v2, v13}, Lٴˑ/ﾞᴵ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v13

    invoke-static {v2}, Lٴˑ/ﾞᴵ;->ˉˆ(Lﹳᴵ/ʽ;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v2}, Lﹳᴵ/ʽ;->reset()V

    new-instance v15, Lⁱˏ/ʼˎ;

    invoke-direct {v15}, Lⁱˏ/ʼˎ;-><init>()V

    :goto_5
    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v2, v6}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v16

    cmp-long v16, v16, v23

    if-eqz v16, :cond_3

    goto :goto_5

    :cond_3
    invoke-interface {v2, v5}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move/from16 v19, v5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    move/from16 v21, v6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v22, v14

    move-object v14, v6

    check-cast v14, Lٴˑ/ˈ;

    iget v14, v14, Lٴˑ/ˈ;->ʾˋ:I

    if-ne v14, v8, :cond_4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move/from16 v6, v21

    move-object/from16 v14, v22

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_d

    :cond_5
    move/from16 v21, v6

    move-object/from16 v22, v14

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v6, :cond_6

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v8, v8, 0x1

    check-cast v14, Lٴˑ/ˈ;

    move-object/from16 v20, v5

    iget-object v5, v14, Lٴˑ/ˈ;->ʽʽ:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v14, Lٴˑ/ˈ;->ˈٴ:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v20

    goto :goto_7

    :cond_6
    new-instance v25, Lٴˑ/ᵔᵢ;

    invoke-interface {v2, v11}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v26

    invoke-interface {v2, v12}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v27

    invoke-interface {v2, v13}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v29, v9

    move-object/from16 v30, v10

    invoke-direct/range {v25 .. v30}, Lٴˑ/ᵔᵢ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v5, v25

    invoke-virtual {v15, v5}, Lⁱˏ/ʼˎ;->add(Ljava/lang/Object;)Z

    move/from16 v5, v19

    move/from16 v6, v21

    move-object/from16 v14, v22

    const/4 v10, 0x0

    goto/16 :goto_5

    :cond_7
    invoke-static {v15}, Lˈˋ/ʾˊ;->ˈ(Lⁱˏ/ʼˎ;)Lⁱˏ/ʼˎ;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "PRAGMA index_list(`"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    :try_start_4
    invoke-static {v2, v7}, Lٴˑ/ﾞᴵ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v3

    const-string v6, "origin"

    invoke-static {v2, v6}, Lٴˑ/ﾞᴵ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v6

    const-string v7, "unique"

    invoke-static {v2, v7}, Lٴˑ/ﾞᴵ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v3, v8, :cond_8

    if-eq v6, v8, :cond_8

    if-ne v7, v8, :cond_9

    :cond_8
    const/4 v6, 0x0

    goto :goto_a

    :cond_9
    new-instance v8, Lⁱˏ/ʼˎ;

    invoke-direct {v8}, Lⁱˏ/ʼˎ;-><init>()V

    :goto_8
    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v2, v6}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "c"

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_8

    :cond_a
    invoke-interface {v2, v3}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v7}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v10

    const-wide/16 v12, 0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_b

    const/4 v10, 0x1

    goto :goto_9

    :cond_b
    const/4 v10, 0x0

    :goto_9
    invoke-static {v0, v9, v10}, Lٴˑ/ﾞᴵ;->ʼᐧ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;Z)Lٴˑ/ʼˎ;

    move-result-object v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v9, :cond_c

    const/4 v10, 0x0

    invoke-static {v2, v10}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    const/4 v10, 0x0

    goto :goto_b

    :cond_c
    :try_start_5
    invoke-virtual {v8, v9}, Lⁱˏ/ʼˎ;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_c

    :cond_d
    invoke-static {v8}, Lˈˋ/ʾˊ;->ˈ(Lⁱˏ/ʼˎ;)Lⁱˏ/ʼˎ;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    move-object v10, v0

    goto :goto_b

    :goto_a
    invoke-static {v2, v6}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    move-object v10, v6

    :goto_b
    new-instance v0, Lٴˑ/ˆʾ;

    invoke-direct {v0, v1, v4, v5, v10}, Lٴˑ/ˆʾ;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    return-object v0

    :goto_c
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v2, v1}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    :goto_d
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    invoke-static {v2, v1}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    move-wide/from16 v5, v23

    goto/16 :goto_0

    :goto_e
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v2, v1}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final ᵔᵢ(Lﹳᴵ/ﹳٴ;)J
    .locals 3

    .prologue
    invoke-static {p0}, Lٴˑ/ﾞᴵ;->ʼˎ(Lﹳᴵ/ﹳٴ;)I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    const-string v0, "SELECT last_insert_rowid()"

    invoke-interface {p0, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p0, v0}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final ᵔﹳ(Lיـ/ˑﹳ;Lᴵⁱ/ﾞʻ;)V
    .locals 8

    .prologue
    new-instance v0, Lיـ/ˑﹳ;

    const/16 v1, 0x3e7

    invoke-direct {v0, v1}, Lיـ/ﹳᐧ;-><init>(I)V

    iget v2, p0, Lיـ/ﹳᐧ;->ʽʽ:I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :cond_0
    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {p0, v4}, Lיـ/ﹳᐧ;->ﾞᴵ(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v4}, Lיـ/ﹳᐧ;->ˆʾ(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v1, :cond_0

    invoke-interface {p1, v0}, Lᴵⁱ/ﾞʻ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lיـ/ﹳᐧ;->clear()V

    move v5, v3

    goto :goto_0

    :cond_1
    if-lez v5, :cond_2

    invoke-interface {p1, v0}, Lᴵⁱ/ﾞʻ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public static final ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I
    .locals 10

    .prologue
    invoke-interface {p0}, Lﹳᴵ/ʽ;->getColumnCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Lﹳᴵ/ʽ;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    if-ltz v2, :cond_2

    return v2

    :cond_2
    const-string v0, "`"

    const/16 v2, 0x60

    invoke-static {v2, v0, p1}, Lʼﾞ/ˊˋ;->ˉˆ(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lﹳᴵ/ʽ;->getColumnCount()I

    move-result v4

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_4

    invoke-interface {p0, v5}, Lﹳᴵ/ʽ;->getColumnName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_3
    if-ltz v5, :cond_5

    return v5

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x19

    if-gt v0, v4, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    invoke-interface {p0}, Lﹳᴵ/ʽ;->getColumnCount()I

    move-result v0

    const-string v4, "."

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, p1}, Lʼﾞ/ˊˋ;->ˉˆ(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v6, v1

    :goto_4
    if-ge v6, v0, :cond_9

    invoke-interface {p0, v6}, Lﹳᴵ/ʽ;->getColumnName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x2

    if-lt v8, v9, :cond_8

    invoke-static {v7, v5, v1}, Lﹶˑ/ᵔﹳ;->ˉـ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v2, :cond_8

    invoke-static {v7, v4, v1}, Lﹶˑ/ᵔﹳ;->ˉـ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_8

    :goto_5
    return v6

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    :goto_6
    return v3
.end method

.method public static final ﹳٴ(ILjava/lang/StringBuilder;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p0, -0x1

    if-ge v0, v1, :cond_0

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final ﾞʻ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 16

    .prologue
    move-object/from16 v0, p4

    instance-of v1, v0, Lٴˑ/ʽ;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lٴˑ/ʽ;

    iget v2, v1, Lٴˑ/ʽ;->ᵎⁱ:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lٴˑ/ʽ;->ᵎⁱ:I

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_0
    new-instance v1, Lٴˑ/ʽ;

    invoke-direct {v1, v0}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    goto :goto_0

    :goto_1
    iget-object v0, v7, Lٴˑ/ʽ;->ˉٴ:Ljava/lang/Object;

    iget v1, v7, Lٴˑ/ʽ;->ᵎⁱ:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v8, 0x1

    sget-object v9, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v1, :cond_4

    if-eq v1, v8, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v1, v7, Lٴˑ/ʽ;->ٴᵢ:Z

    iget-boolean v3, v7, Lٴˑ/ʽ;->ˊʻ:Z

    iget-object v4, v7, Lٴˑ/ʽ;->ᴵᵔ:Lᴵⁱ/ﾞʻ;

    iget-object v5, v7, Lٴˑ/ʽ;->ˈٴ:Lʼﾞ/ˊʻ;

    invoke-static {v0}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    move v14, v1

    move v13, v3

    move-object v15, v4

    move-object v12, v5

    goto :goto_2

    :cond_3
    invoke-static {v0}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    return-object v0

    :cond_4
    invoke-static {v0}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lʼﾞ/ˊʻ;->ˆʾ()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lʼﾞ/ˊʻ;->ᵔʾ()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lʼﾞ/ˊʻ;->ٴﹶ()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lٴˑ/ﹳٴ;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v3, p0

    move/from16 v2, p1

    move/from16 v1, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lٴˑ/ﹳٴ;-><init>(ZZLʼﾞ/ˊʻ;Lˈי/ˈ;Lᴵⁱ/ﾞʻ;I)V

    move v1, v2

    move-object v2, v0

    move-object v0, v3

    iput v8, v7, Lٴˑ/ʽ;->ᵎⁱ:I

    invoke-virtual {v0, v1, v2, v7}, Lʼﾞ/ˊʻ;->ﹳᐧ(ZLᴵⁱ/ʼᐧ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_5

    goto :goto_3

    :cond_5
    return-object v0

    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v4, p2

    iput-object v0, v7, Lٴˑ/ʽ;->ˈٴ:Lʼﾞ/ˊʻ;

    move-object/from16 v5, p3

    iput-object v5, v7, Lٴˑ/ʽ;->ᴵᵔ:Lᴵⁱ/ﾞʻ;

    iput-boolean v1, v7, Lٴˑ/ʽ;->ˊʻ:Z

    iput-boolean v4, v7, Lٴˑ/ʽ;->ٴᵢ:Z

    iput v3, v7, Lٴˑ/ʽ;->ᵎⁱ:I

    invoke-static {v0, v4, v7}, Lٴˑ/ﾞᴵ;->ᵎﹶ(Lʼﾞ/ˊʻ;ZLᴵʾ/ʽ;)Lˈי/ᵔᵢ;

    move-result-object v3

    if-ne v3, v9, :cond_7

    goto :goto_3

    :cond_7
    move-object v12, v0

    move v13, v1

    move-object v0, v3

    move v14, v4

    move-object v15, v5

    :goto_2
    check-cast v0, Lˈי/ᵔᵢ;

    new-instance v10, Lٴˑ/ⁱˊ;

    const/4 v11, 0x0

    invoke-direct/range {v10 .. v15}, Lٴˑ/ⁱˊ;-><init>(Lˈי/ˈ;Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)V

    const/4 v1, 0x0

    iput-object v1, v7, Lٴˑ/ʽ;->ˈٴ:Lʼﾞ/ˊʻ;

    iput-object v1, v7, Lٴˑ/ʽ;->ᴵᵔ:Lᴵⁱ/ﾞʻ;

    iput v2, v7, Lٴˑ/ʽ;->ᵎⁱ:I

    invoke-static {v0, v10, v7}, Lᴵי/ʾᵎ;->ʾᵎ(Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_8

    :goto_3
    return-object v9

    :cond_8
    return-object v0
.end method

.method public static final ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I
    .locals 7

    .prologue
    invoke-static {p0, p1}, Lٴˑ/ﾞᴵ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lﹳᴵ/ʽ;->getColumnCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Lﹳᴵ/ʽ;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    const/16 v6, 0x3f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lﹶˈ/ˆʾ;->ᵎʻ(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lᴵⁱ/ﾞʻ;I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Column \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist. Available columns: ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
