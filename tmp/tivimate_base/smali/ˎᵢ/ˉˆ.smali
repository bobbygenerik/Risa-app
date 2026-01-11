.class public final Lˎᵢ/ˉˆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lⁱʿ/ﹳٴ;


# static fields
.field public static final ᴵˊ:Lˎᵢ/ˉˆ;


# instance fields
.field public final ʾˋ:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lˎᵢ/ˉˆ;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Lˎᵢ/ˉˆ;-><init>([Ljava/lang/String;)V

    sput-object v0, Lˎᵢ/ˉˆ;->ᴵˊ:Lˎᵢ/ˉˆ;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎᵢ/ˉˆ;->ʾˋ:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Lˎᵢ/ˉˆ;

    if-eqz v0, :cond_0

    check-cast p1, Lˎᵢ/ˉˆ;

    iget-object p1, p1, Lˎᵢ/ˉˆ;->ʾˋ:[Ljava/lang/String;

    iget-object v0, p0, Lˎᵢ/ˉˆ;->ʾˋ:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lˎᵢ/ˉˆ;->ʾˋ:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 6

    .prologue
    invoke-virtual {p0}, Lˎᵢ/ˉˆ;->size()I

    move-result v0

    new-array v1, v0, [Lʻᵢ/ˑﹳ;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lˎᵢ/ˉˆ;->ⁱˊ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lˎᵢ/ˉˆ;->ﾞᴵ(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lʻᵢ/ˑﹳ;

    invoke-direct {v5, v3, v4}, Lʻᵢ/ˑﹳ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lˊʼ/ⁱˊ;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lˊʼ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lˎᵢ/ˉˆ;->ʾˋ:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lˎᵢ/ˉˆ;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lˎᵢ/ˉˆ;->ⁱˊ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lˎᵢ/ˉˆ;->ﾞᴵ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lⁱᐧ/ʽ;->ˆʾ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v4, "\u2588\u2588"

    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˈ()Lʼٴ/ʼˎ;
    .locals 3

    new-instance v0, Lʼٴ/ʼˎ;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lʼٴ/ʼˎ;-><init>(I)V

    iget-object v1, p0, Lˎᵢ/ˉˆ;->ʾˋ:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lʼٴ/ʼˎ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-interface {v2, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final ˑﹳ()Ljava/util/TreeMap;
    .locals 6

    .prologue
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lˎᵢ/ˉˆ;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lˎᵢ/ˉˆ;->ⁱˊ(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, v2}, Lˎᵢ/ˉˆ;->ﾞᴵ(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final ⁱˊ(I)Ljava/lang/String;
    .locals 3

    .prologue
    mul-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lˎᵢ/ˉˆ;->ʾˋ:[Ljava/lang/String;

    invoke-static {v0, v1}, Lﹶˈ/ʼˎ;->ᵎʻ(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "name["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ﹳٴ(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    iget-object v0, p0, Lˎᵢ/ˉˆ;->ʾˋ:[Ljava/lang/String;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵔﹳ(III)I

    move-result v2

    if-gt v2, v1, :cond_1

    :goto_0
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    aget-object p1, v0, v1

    return-object p1

    :cond_0
    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ﾞᴵ(I)Ljava/lang/String;
    .locals 3

    .prologue
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lˎᵢ/ˉˆ;->ʾˋ:[Ljava/lang/String;

    invoke-static {v0, v1}, Lﹶˈ/ʼˎ;->ᵎʻ(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "value["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
