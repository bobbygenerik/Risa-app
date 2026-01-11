.class public final Lʽᴵ/ʾˋ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˈ:Ljava/util/ArrayList;


# instance fields
.field public final ʽ:Ljava/util/LinkedHashMap;

.field public final ⁱˊ:Ljava/lang/ThreadLocal;

.field public final ﹳٴ:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lʽᴵ/ʾˋ;->ˈ:Ljava/util/ArrayList;

    sget-object v1, Lʽᴵ/ˊʻ;->ﹳٴ:Lʽᴵ/ﹳٴ;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lʽᴵ/ᵔᵢ;->ʽ:Lʽᴵ/ﹳٴ;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lʽᴵ/ⁱˊ;->ˑﹳ:Lʽᴵ/ﹳٴ;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lʽᴵ/ⁱˊ;->ˈ:Lʽᴵ/ﹳٴ;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lʽᴵ/ᴵˊ;->ﹳٴ:Lʽᴵ/ﹳٴ;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lʽᴵ/ᵎﹶ;->ˈ:Lʽᴵ/ﹳٴ;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lʽᴵ/ʾᵎ;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lʽᴵ/ʾˋ;->ⁱˊ:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lʽᴵ/ʾˋ;->ʽ:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lʽᴵ/ʾᵎ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v2, Lʽᴵ/ʾˋ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lʽᴵ/ʾˋ;->ﹳٴ:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lʽᴵ/ﾞʻ;
    .locals 10

    .prologue
    if-eqz p1, :cond_d

    if-eqz p2, :cond_c

    invoke-static {p1}, Lᵔˈ/ˑﹳ;->ﹳٴ(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    array-length v0, p1

    if-ne v0, v2, :cond_b

    aget-object p1, p1, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lʽᴵ/ʾˋ;->ʽ:Ljava/util/LinkedHashMap;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lʽᴵ/ʾˋ;->ʽ:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʽᴵ/ﾞʻ;

    if-eqz v4, :cond_3

    monitor-exit v3

    return-object v4

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lʽᴵ/ʾˋ;->ⁱˊ:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lʽᴵ/ᵢˏ;

    if-nez v3, :cond_4

    new-instance v3, Lʽᴵ/ᵢˏ;

    invoke-direct {v3, p0}, Lʽᴵ/ᵢˏ;-><init>(Lʽᴵ/ʾˋ;)V

    iget-object v4, p0, Lʽᴵ/ʾˋ;->ⁱˊ:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_4
    iget-object v4, v3, Lʽᴵ/ᵢˏ;->ⁱˊ:Ljava/util/ArrayDeque;

    iget-object v5, v3, Lʽᴵ/ᵢˏ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_6

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lʽᴵ/ʼʼ;

    iget-object v9, v8, Lʽᴵ/ʼʼ;->ʽ:Ljava/lang/Object;

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v4, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p3, v8, Lʽᴵ/ʼʼ;->ˈ:Lʽᴵ/ﾞʻ;

    if-eqz p3, :cond_7

    move-object v8, p3

    goto :goto_3

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    new-instance v6, Lʽᴵ/ʼʼ;

    invoke-direct {v6, p1, p3, v0}, Lʽᴵ/ʼʼ;-><init>(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    :cond_7
    :goto_3
    if-eqz v8, :cond_8

    invoke-virtual {v3, v1}, Lʽᴵ/ᵢˏ;->ⁱˊ(Z)V

    return-object v8

    :cond_8
    :try_start_1
    iget-object p3, p0, Lʽᴵ/ʾˋ;->ﹳٴ:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    move v0, v1

    :goto_4
    if-ge v0, p3, :cond_a

    iget-object v4, p0, Lʽᴵ/ʾˋ;->ﹳٴ:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʽᴵ/ٴﹶ;

    invoke-interface {v4, p1, p2, p0}, Lʽᴵ/ٴﹶ;->ﹳٴ(Ljava/lang/reflect/Type;Ljava/util/Set;Lʽᴵ/ʾˋ;)Lʽᴵ/ﾞʻ;

    move-result-object v4

    if-nez v4, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    iget-object p1, v3, Lʽᴵ/ᵢˏ;->ⁱˊ:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʽᴵ/ʼʼ;

    iput-object v4, p1, Lʽᴵ/ʼʼ;->ˈ:Lʽᴵ/ﾞʻ;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v3, v2}, Lʽᴵ/ᵢˏ;->ⁱˊ(Z)V

    return-object v4

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_a
    :try_start_2
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No JsonAdapter for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lᵔˈ/ˑﹳ;->ᵔᵢ(Ljava/lang/reflect/Type;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_5
    :try_start_3
    invoke-virtual {v3, p1}, Lʽᴵ/ᵢˏ;->ﹳٴ(Ljava/lang/IllegalArgumentException;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_6
    invoke-virtual {v3, v1}, Lʽᴵ/ᵢˏ;->ⁱˊ(Z)V

    throw p1

    :goto_7
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "annotations == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﹳٴ(Ljava/lang/Class;)Lʽᴵ/ﾞʻ;
    .locals 2

    sget-object v0, Lᵔˈ/ˑﹳ;->ﹳٴ:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lʽᴵ/ʾˋ;->ⁱˊ(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lʽᴵ/ﾞʻ;

    move-result-object p1

    return-object p1
.end method
