.class public final Lﹳﹶ/ﹳٴ;
.super Lᐧᵢ/ٴﹶ;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Z

.field public final ﹳٴ:Lʽᴵ/ʾˋ;


# direct methods
.method public constructor <init>(Lʽᴵ/ʾˋ;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳﹶ/ﹳٴ;->ﹳٴ:Lʽᴵ/ʾˋ;

    iput-boolean p2, p0, Lﹳﹶ/ﹳٴ;->ⁱˊ:Z

    return-void
.end method

.method public static ʽ([Ljava/lang/annotation/Annotation;)Ljava/util/Set;
    .locals 6

    .prologue
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lʽᴵ/ᵔʾ;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Landroidx/leanback/widget/ʻٴ;)Lᐧᵢ/ﾞʻ;
    .locals 1

    invoke-static {p2}, Lﹳﹶ/ﹳٴ;->ʽ([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object p2

    const/4 p3, 0x0

    iget-object v0, p0, Lﹳﹶ/ﹳٴ;->ﹳٴ:Lʽᴵ/ʾˋ;

    invoke-virtual {v0, p1, p2, p3}, Lʽᴵ/ʾˋ;->ⁱˊ(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lʽᴵ/ﾞʻ;

    move-result-object p1

    new-instance p2, Lﹳﹶ/ʽ;

    invoke-direct {p2, p1}, Lﹳﹶ/ʽ;-><init>(Lʽᴵ/ﾞʻ;)V

    return-object p2
.end method

.method public final ﹳٴ(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lᐧᵢ/ﾞʻ;
    .locals 2

    invoke-static {p2}, Lﹳﹶ/ﹳٴ;->ʽ([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object p2

    const/4 v0, 0x0

    iget-object v1, p0, Lﹳﹶ/ﹳٴ;->ﹳٴ:Lʽᴵ/ʾˋ;

    invoke-virtual {v1, p1, p2, v0}, Lʽᴵ/ʾˋ;->ⁱˊ(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lʽᴵ/ﾞʻ;

    move-result-object p1

    new-instance p2, Lﹳﹶ/ⁱˊ;

    iget-boolean v0, p0, Lﹳﹶ/ﹳٴ;->ⁱˊ:Z

    invoke-direct {p2, p1, v0}, Lﹳﹶ/ⁱˊ;-><init>(Lʽᴵ/ﾞʻ;Z)V

    return-object p2
.end method
