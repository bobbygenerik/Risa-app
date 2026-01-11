.class public final Lʽᴵ/ᵎﹶ;
.super Lʽᴵ/ﾞʻ;
.source "SourceFile"


# static fields
.field public static final ˈ:Lʽᴵ/ﹳٴ;


# instance fields
.field public final ʽ:Lﹶﾞ/ⁱי;

.field public final ⁱˊ:[Lʽᴵ/ﾞᴵ;

.field public final ﹳٴ:Lʽᴵ/ˊʻ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lʽᴵ/ﹳٴ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lʽᴵ/ﹳٴ;-><init>(I)V

    sput-object v0, Lʽᴵ/ᵎﹶ;->ˈ:Lʽᴵ/ﹳٴ;

    return-void
.end method

.method public constructor <init>(Lʽᴵ/ˊʻ;Ljava/util/TreeMap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽᴵ/ᵎﹶ;->ﹳٴ:Lʽᴵ/ˊʻ;

    invoke-virtual {p2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/TreeMap;->size()I

    move-result v0

    new-array v0, v0, [Lʽᴵ/ﾞᴵ;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lʽᴵ/ﾞᴵ;

    iput-object p1, p0, Lʽᴵ/ᵎﹶ;->ⁱˊ:[Lʽᴵ/ﾞᴵ;

    invoke-virtual {p2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/TreeMap;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lﹶﾞ/ⁱי;->ʾᵎ([Ljava/lang/String;)Lﹶﾞ/ⁱי;

    move-result-object p1

    iput-object p1, p0, Lʽᴵ/ᵎﹶ;->ʽ:Lﹶﾞ/ⁱי;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonAdapter("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lʽᴵ/ᵎﹶ;->ﹳٴ:Lʽᴵ/ˊʻ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˑﹳ(Lʽᴵ/ﹳᐧ;Ljava/lang/Object;)V
    .locals 5

    .prologue
    :try_start_0
    invoke-virtual {p1}, Lʽᴵ/ﹳᐧ;->ᵎﹶ()Lʽᴵ/ᵔﹳ;

    iget-object v0, p0, Lʽᴵ/ᵎﹶ;->ⁱˊ:[Lʽᴵ/ﾞᴵ;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, v3, Lʽᴵ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lʽᴵ/ﹳᐧ;->ـˆ(Ljava/lang/String;)Lʽᴵ/ᵔﹳ;

    iget-object v4, v3, Lʽᴵ/ﾞᴵ;->ⁱˊ:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v3, v3, Lʽᴵ/ﾞᴵ;->ʽ:Lʽᴵ/ﾞʻ;

    invoke-virtual {v3, p1, v4}, Lʽᴵ/ﾞʻ;->ˑﹳ(Lʽᴵ/ﹳᐧ;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lʽᴵ/ﹳᐧ;->ˉˆ()Lʽᴵ/ᵔﹳ;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final ⁱˊ(Lʽᴵ/ˉˆ;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lʽᴵ/ᵎﹶ;->ﹳٴ:Lʽᴵ/ˊʻ;

    invoke-virtual {v0}, Lʽᴵ/ˊʻ;->ˑﹳ()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ᵎﹶ()V

    :goto_0
    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ʾˋ()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lʽᴵ/ᵎﹶ;->ʽ:Lﹶﾞ/ⁱי;

    invoke-virtual {p1, v1}, Lʽᴵ/ˉˆ;->ˊᵔ(Lﹶﾞ/ⁱי;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ﹶᐧ()V

    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ـᵎ()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lʽᴵ/ᵎﹶ;->ⁱˊ:[Lʽᴵ/ﾞᴵ;

    aget-object v1, v2, v1

    iget-object v2, v1, Lʽᴵ/ﾞᴵ;->ʽ:Lʽᴵ/ﾞʻ;

    invoke-virtual {v2, p1}, Lʽᴵ/ﾞʻ;->ⁱˊ(Lʽᴵ/ˉˆ;)Ljava/lang/Object;

    move-result-object v2

    iget-object v1, v1, Lʽᴵ/ﾞᴵ;->ⁱˊ:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ﹳᐧ()V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :goto_1
    invoke-static {p1}, Lᵔˈ/ˑﹳ;->ᵎﹶ(Ljava/lang/reflect/InvocationTargetException;)V

    const/4 p1, 0x0

    throw p1

    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
