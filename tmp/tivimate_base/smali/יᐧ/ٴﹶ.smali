.class public final Lיᐧ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˈ:[Landroid/graphics/Bitmap$Config;

.field public static final ˑﹳ:[Landroid/graphics/Bitmap$Config;

.field public static final ᵎﹶ:[Landroid/graphics/Bitmap$Config;

.field public static final ᵔᵢ:[Landroid/graphics/Bitmap$Config;

.field public static final ﾞᴵ:[Landroid/graphics/Bitmap$Config;


# instance fields
.field public final ʽ:Ljava/util/HashMap;

.field public final ⁱˊ:Lﹳʽ/ˊʻ;

.field public final ﹳٴ:Lיᐧ/ˑﹳ;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v1, v4, :cond_0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Bitmap$Config;

    array-length v1, v0

    sub-int/2addr v1, v3

    invoke-static {}, Lיٴ/ˈ;->ᵎﹶ()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    aput-object v4, v0, v1

    :cond_0
    sput-object v0, Lיᐧ/ٴﹶ;->ˈ:[Landroid/graphics/Bitmap$Config;

    sput-object v0, Lיᐧ/ٴﹶ;->ˑﹳ:[Landroid/graphics/Bitmap$Config;

    new-array v0, v3, [Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v2

    sput-object v0, Lיᐧ/ٴﹶ;->ﾞᴵ:[Landroid/graphics/Bitmap$Config;

    new-array v0, v3, [Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v2

    sput-object v0, Lיᐧ/ٴﹶ;->ᵎﹶ:[Landroid/graphics/Bitmap$Config;

    new-array v0, v3, [Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v2

    sput-object v0, Lיᐧ/ٴﹶ;->ᵔᵢ:[Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lיᐧ/ˑﹳ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lיᐧ/ˑﹳ;-><init>(I)V

    iput-object v0, p0, Lיᐧ/ٴﹶ;->ﹳٴ:Lיᐧ/ˑﹳ;

    new-instance v0, Lﹳʽ/ˊʻ;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lﹳʽ/ˊʻ;-><init>(I)V

    iput-object v0, p0, Lיᐧ/ٴﹶ;->ⁱˊ:Lﹳʽ/ˊʻ;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lיᐧ/ٴﹶ;->ʽ:Ljava/util/HashMap;

    return-void
.end method

.method public static ʽ(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v0, "SizeConfigStrategy{groupedMap="

    invoke-static {v0}, Lʻٴ/ᵎﹶ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lיᐧ/ٴﹶ;->ⁱˊ:Lﹳʽ/ˊʻ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sortedSizes=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lיᐧ/ٴﹶ;->ʽ:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "], "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˈ(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;
    .locals 2

    .prologue
    iget-object v0, p0, Lיᐧ/ٴﹶ;->ʽ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/NavigableMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public final ˑﹳ(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    invoke-static {p1}, Lʿٴ/ᵔʾ;->ʽ(Landroid/graphics/Bitmap;)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    iget-object v2, p0, Lיᐧ/ٴﹶ;->ﹳٴ:Lיᐧ/ˑﹳ;

    iget-object v3, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lיᐧ/ᵔᵢ;

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lיᐧ/ˑﹳ;->ﹶˎ()Lיᐧ/ᵔᵢ;

    move-result-object v3

    :cond_0
    check-cast v3, Lיᐧ/ˆʾ;

    iput v0, v3, Lיᐧ/ˆʾ;->ⁱˊ:I

    iput-object v1, v3, Lיᐧ/ˆʾ;->ʽ:Landroid/graphics/Bitmap$Config;

    iget-object v0, p0, Lיᐧ/ٴﹶ;->ⁱˊ:Lﹳʽ/ˊʻ;

    invoke-virtual {v0, v3, p1}, Lﹳʽ/ˊʻ;->ᴵˊ(Lיᐧ/ᵔᵢ;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-virtual {p0, p1}, Lיᐧ/ٴﹶ;->ˈ(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object p1

    iget v0, v3, Lיᐧ/ˆʾ;->ⁱˊ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget v1, v3, Lיᐧ/ˆʾ;->ⁱˊ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v2, v0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final ⁱˊ(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    mul-int v0, p1, p2

    invoke-static {p3}, Lʿٴ/ᵔʾ;->ˈ(Landroid/graphics/Bitmap$Config;)I

    move-result v1

    mul-int/2addr v1, v0

    iget-object v0, p0, Lיᐧ/ٴﹶ;->ﹳٴ:Lיᐧ/ˑﹳ;

    iget-object v2, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lיᐧ/ᵔᵢ;

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lיᐧ/ˑﹳ;->ﹶˎ()Lיᐧ/ᵔᵢ;

    move-result-object v2

    :cond_0
    check-cast v2, Lיᐧ/ˆʾ;

    iput v1, v2, Lיᐧ/ˆʾ;->ⁱˊ:I

    iput-object p3, v2, Lיᐧ/ˆʾ;->ʽ:Landroid/graphics/Bitmap$Config;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    const/4 v5, 0x0

    if-lt v3, v4, :cond_1

    invoke-static {}, Lיٴ/ˈ;->ᵎﹶ()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lיᐧ/ٴﹶ;->ˑﹳ:[Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_1
    sget-object v3, Lיᐧ/ʼˎ;->ﹳٴ:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v6, 0x2

    if-eq v3, v6, :cond_4

    const/4 v6, 0x3

    if-eq v3, v6, :cond_3

    const/4 v6, 0x4

    if-eq v3, v6, :cond_2

    new-array v3, v4, [Landroid/graphics/Bitmap$Config;

    aput-object p3, v3, v5

    goto :goto_0

    :cond_2
    sget-object v3, Lיᐧ/ٴﹶ;->ᵔᵢ:[Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_3
    sget-object v3, Lיᐧ/ٴﹶ;->ᵎﹶ:[Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_4
    sget-object v3, Lיᐧ/ٴﹶ;->ﾞᴵ:[Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_5
    sget-object v3, Lיᐧ/ٴﹶ;->ˈ:[Landroid/graphics/Bitmap$Config;

    :goto_0
    array-length v4, v3

    :goto_1
    if-ge v5, v4, :cond_a

    aget-object v6, v3, v5

    invoke-virtual {p0, v6}, Lיᐧ/ٴﹶ;->ˈ(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/lit8 v9, v1, 0x8

    if-gt v8, v9, :cond_9

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_7

    if-nez v6, :cond_6

    if-eqz p3, :cond_a

    goto :goto_2

    :cond_6
    invoke-virtual {v6, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_7
    :goto_2
    invoke-virtual {v0, v2}, Lʽⁱ/ᵎﹶ;->ˎᐧ(Lיᐧ/ᵔᵢ;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lיᐧ/ᵔᵢ;

    if-nez v2, :cond_8

    invoke-virtual {v0}, Lיᐧ/ˑﹳ;->ﹶˎ()Lיᐧ/ᵔᵢ;

    move-result-object v2

    :cond_8
    check-cast v2, Lיᐧ/ˆʾ;

    iput v1, v2, Lיᐧ/ˆʾ;->ⁱˊ:I

    iput-object v6, v2, Lיᐧ/ˆʾ;->ʽ:Landroid/graphics/Bitmap$Config;

    goto :goto_3

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_a
    :goto_3
    iget-object v0, p0, Lיᐧ/ٴﹶ;->ⁱˊ:Lﹳʽ/ˊʻ;

    invoke-virtual {v0, v2}, Lﹳʽ/ˊʻ;->ﹳᐧ(Lיᐧ/ᵔᵢ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    iget v1, v2, Lיᐧ/ˆʾ;->ⁱˊ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lיᐧ/ٴﹶ;->ﹳٴ(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    :cond_b
    return-object v0
.end method

.method public final ﹳٴ(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {p0, v0}, Lיᐧ/ٴﹶ;->ˈ(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tried to decrement empty size, size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", removed: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lʿٴ/ᵔʾ;->ʽ(Landroid/graphics/Bitmap;)I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    invoke-static {p1, p2}, Lיᐧ/ٴﹶ;->ʽ(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", this: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
