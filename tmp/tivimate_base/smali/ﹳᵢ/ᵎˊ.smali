.class public final Lﹳᵢ/ᵎˊ;
.super Lﹳᵢ/ˆʾ;
.source "SourceFile"


# static fields
.field public static final ʼˈ:Lʽⁱ/ᴵˊ;


# instance fields
.field public final ˆﾞ:[Lʽⁱ/ʼˈ;

.field public final ˈʿ:Lᵔﹶ/ˈٴ;

.field public ˊˋ:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

.field public ˋᵔ:[[J

.field public ˑٴ:I

.field public final ᵎˊ:[Lﹳᵢ/ᴵˊ;

.field public final ᵔי:Ljava/util/ArrayList;

.field public final ᵔٴ:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lʽⁱ/ˏי;

    invoke-direct {v0}, Lʽⁱ/ˏי;-><init>()V

    sget-object v1, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v1, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v1, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    new-instance v1, Lʽⁱ/ـˆ;

    invoke-direct {v1}, Lʽⁱ/ـˆ;-><init>()V

    sget-object v8, Lʽⁱ/ᵢˏ;->ﹳٴ:Lʽⁱ/ᵢˏ;

    new-instance v2, Lʽⁱ/ᴵˊ;

    new-instance v4, Lʽⁱ/ʻٴ;

    invoke-direct {v4, v0}, Lʽⁱ/ʽﹳ;-><init>(Lʽⁱ/ˏי;)V

    new-instance v6, Lʽⁱ/ʾᵎ;

    invoke-direct {v6, v1}, Lʽⁱ/ʾᵎ;-><init>(Lʽⁱ/ـˆ;)V

    sget-object v7, Lʽⁱ/ᴵᵔ;->ᴵˊ:Lʽⁱ/ᴵᵔ;

    const-string v3, "MergingMediaSource"

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, Lʽⁱ/ᴵˊ;-><init>(Ljava/lang/String;Lʽⁱ/ʻٴ;Lʽⁱ/ʼʼ;Lʽⁱ/ʾᵎ;Lʽⁱ/ᴵᵔ;Lʽⁱ/ᵢˏ;)V

    sput-object v2, Lﹳᵢ/ᵎˊ;->ʼˈ:Lʽⁱ/ᴵˊ;

    return-void
.end method

.method public varargs constructor <init>([Lﹳᵢ/ᴵˊ;)V
    .locals 4

    .prologue
    new-instance v0, Lᵔﹶ/ˈٴ;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lᵔﹶ/ˈٴ;-><init>(I)V

    invoke-direct {p0}, Lﹳᵢ/ˆʾ;-><init>()V

    iput-object p1, p0, Lﹳᵢ/ᵎˊ;->ᵎˊ:[Lﹳᵢ/ᴵˊ;

    iput-object v0, p0, Lﹳᵢ/ᵎˊ;->ˈʿ:Lᵔﹶ/ˈٴ;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lﹳᵢ/ᵎˊ;->ᵔٴ:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lﹳᵢ/ᵎˊ;->ˑٴ:I

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lﹳᵢ/ᵎˊ;->ᵔי:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lﹳᵢ/ᵎˊ;->ᵔי:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length p1, p1

    new-array p1, p1, [Lʽⁱ/ʼˈ;

    iput-object p1, p0, Lﹳᵢ/ᵎˊ;->ˆﾞ:[Lʽⁱ/ʼˈ;

    new-array p1, v0, [[J

    iput-object p1, p0, Lﹳᵢ/ᵎˊ;->ˋᵔ:[[J

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p1, "expectedKeys"

    const/16 v0, 0x8

    invoke-static {v0, p1}, Lʼʻ/ﹳᐧ;->ˈ(ILjava/lang/String;)V

    const/4 p1, 0x2

    const-string v1, "expectedValuesPerKey"

    invoke-static {p1, v1}, Lʼʻ/ﹳᐧ;->ˈ(ILjava/lang/String;)V

    invoke-static {v0}, Lʼʻ/ʻٴ;->ⁱˊ(I)Lʼʻ/ʻٴ;

    move-result-object p1

    new-instance v0, Lʼʻ/ˈⁱ;

    invoke-direct {v0}, Lʼʻ/ˈⁱ;-><init>()V

    new-instance v1, Lʼʻ/ᴵˑ;

    invoke-direct {v1, p1}, Lʼʻ/ᴵˑ;-><init>(Ljava/util/Map;)V

    iput-object v0, v1, Lʼʻ/ᴵˑ;->ˊʻ:Lʼʻ/ˈⁱ;

    return-void
.end method


# virtual methods
.method public final ʽʽ(Ljava/lang/Object;Lﹳᵢ/ﹳٴ;Lʽⁱ/ʼˈ;)V
    .locals 6

    .prologue
    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lﹳᵢ/ᵎˊ;->ˊˋ:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lﹳᵢ/ᵎˊ;->ˑٴ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p3}, Lʽⁱ/ʼˈ;->ᵔᵢ()I

    move-result v0

    iput v0, p0, Lﹳᵢ/ᵎˊ;->ˑٴ:I

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lʽⁱ/ʼˈ;->ᵔᵢ()I

    move-result v0

    iget v1, p0, Lﹳᵢ/ᵎˊ;->ˑٴ:I

    if-eq v0, v1, :cond_2

    new-instance p1, Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    iput-object p1, p0, Lﹳᵢ/ᵎˊ;->ˊˋ:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lﹳᵢ/ᵎˊ;->ˋᵔ:[[J

    array-length v0, v0

    const/4 v1, 0x0

    iget-object v2, p0, Lﹳᵢ/ᵎˊ;->ˆﾞ:[Lʽⁱ/ʼˈ;

    if-nez v0, :cond_3

    iget v0, p0, Lﹳᵢ/ᵎˊ;->ˑٴ:I

    array-length v3, v2

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    aput v0, v4, v1

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lﹳᵢ/ᵎˊ;->ˋᵔ:[[J

    :cond_3
    iget-object v0, p0, Lﹳᵢ/ᵎˊ;->ᵔٴ:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput-object p3, v2, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    aget-object p1, v2, v1

    invoke-virtual {p0, p1}, Lﹳᵢ/ﹳٴ;->ʻٴ(Lʽⁱ/ʼˈ;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final ʾᵎ()V
    .locals 2

    invoke-super {p0}, Lﹳᵢ/ˆʾ;->ʾᵎ()V

    iget-object v0, p0, Lﹳᵢ/ᵎˊ;->ˆﾞ:[Lʽⁱ/ʼˈ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lﹳᵢ/ᵎˊ;->ˑٴ:I

    iput-object v1, p0, Lﹳᵢ/ᵎˊ;->ˊˋ:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    iget-object v0, p0, Lﹳᵢ/ᵎˊ;->ᵔٴ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lﹳᵢ/ᵎˊ;->ᵎˊ:[Lﹳᵢ/ᴵˊ;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final ˈ()V
    .locals 1

    .prologue
    iget-object v0, p0, Lﹳᵢ/ᵎˊ;->ˊˋ:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    if-nez v0, :cond_0

    invoke-super {p0}, Lﹳᵢ/ˆʾ;->ˈ()V

    return-void

    :cond_0
    throw v0
.end method

.method public final ˏי(Lـˊ/ᵔﹳ;)V
    .locals 2

    .prologue
    iput-object p1, p0, Lﹳᵢ/ˆʾ;->ٴʼ:Lـˊ/ᵔﹳ;

    const/4 p1, 0x0

    invoke-static {p1}, Lᐧˎ/ʼʼ;->ʼᐧ(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lﹳᵢ/ˆʾ;->ᵎⁱ:Landroid/os/Handler;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lﹳᵢ/ᵎˊ;->ᵎˊ:[Lﹳᵢ/ᴵˊ;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-object v0, v0, p1

    invoke-virtual {p0, v1, v0}, Lﹳᵢ/ˆʾ;->ˈٴ(Ljava/lang/Integer;Lﹳᵢ/ᴵˊ;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ˑﹳ(Lﹳᵢ/ʾᵎ;)V
    .locals 8

    .prologue
    check-cast p1, Lﹳᵢ/ᵎⁱ;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lﹳᵢ/ᵎˊ;->ᵎˊ:[Lﹳᵢ/ᴵˊ;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lﹳᵢ/ᵎˊ;->ᵔי:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v4, p1, Lﹳᵢ/ᵎⁱ;->ʾˋ:[Lﹳᵢ/ʾᵎ;

    iget-object v5, p1, Lﹳᵢ/ᵎⁱ;->ᴵˊ:[Z

    aget-boolean v6, v5, v1

    if-eqz v6, :cond_0

    aget-object v4, v4, v1

    check-cast v4, Lﹳᵢ/ˏᵢ;

    iget-object v4, v4, Lﹳᵢ/ˏᵢ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    goto :goto_1

    :cond_0
    aget-object v4, v4, v1

    :goto_1
    move v6, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lﹳᵢ/ٴʼ;

    iget-object v7, v7, Lﹳᵢ/ٴʼ;->ⁱˊ:Lﹳᵢ/ʾᵎ;

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    aget-object v2, v2, v1

    iget-object v3, p1, Lﹳᵢ/ᵎⁱ;->ʾˋ:[Lﹳᵢ/ʾᵎ;

    aget-boolean v4, v5, v1

    if-eqz v4, :cond_3

    aget-object v3, v3, v1

    check-cast v3, Lﹳᵢ/ˏᵢ;

    iget-object v3, v3, Lﹳᵢ/ˏᵢ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    goto :goto_4

    :cond_3
    aget-object v3, v3, v1

    :goto_4
    invoke-interface {v2, v3}, Lﹳᵢ/ᴵˊ;->ˑﹳ(Lﹳᵢ/ʾᵎ;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final ᵔʾ(Lʽⁱ/ᴵˊ;)V
    .locals 2

    iget-object v0, p0, Lﹳᵢ/ᵎˊ;->ᵎˊ:[Lﹳᵢ/ᴵˊ;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lﹳᵢ/ᴵˊ;->ᵔʾ(Lʽⁱ/ᴵˊ;)V

    return-void
.end method

.method public final ᵢˏ(Ljava/lang/Object;Lﹳᵢ/ᵢˏ;)Lﹳᵢ/ᵢˏ;
    .locals 4

    .prologue
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lﹳᵢ/ᵎˊ;->ᵔי:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lﹳᵢ/ٴʼ;

    iget-object v3, v3, Lﹳᵢ/ٴʼ;->ﹳٴ:Lﹳᵢ/ᵢˏ;

    invoke-virtual {v3, p2}, Lﹳᵢ/ᵢˏ;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lﹳᵢ/ٴʼ;

    iget-object p1, p1, Lﹳᵢ/ٴʼ;->ﹳٴ:Lﹳᵢ/ᵢˏ;

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ⁱˊ(Lﹳᵢ/ᵢˏ;Lᵔⁱ/ˑﹳ;J)Lﹳᵢ/ʾᵎ;
    .locals 11

    .prologue
    iget-object v0, p0, Lﹳᵢ/ᵎˊ;->ᵎˊ:[Lﹳᵢ/ᴵˊ;

    array-length v1, v0

    new-array v2, v1, [Lﹳᵢ/ʾᵎ;

    iget-object v3, p0, Lﹳᵢ/ᵎˊ;->ˆﾞ:[Lʽⁱ/ʼˈ;

    const/4 v4, 0x0

    aget-object v5, v3, v4

    iget-object v6, p1, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lʽⁱ/ʼˈ;->ⁱˊ(Ljava/lang/Object;)I

    move-result v5

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v6, v3, v4

    invoke-virtual {v6, v5}, Lʽⁱ/ʼˈ;->ﾞʻ(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Lﹳᵢ/ᵢˏ;->ﹳٴ(Ljava/lang/Object;)Lﹳᵢ/ᵢˏ;

    move-result-object v6

    aget-object v7, v0, v4

    iget-object v8, p0, Lﹳᵢ/ᵎˊ;->ˋᵔ:[[J

    aget-object v8, v8, v5

    aget-wide v9, v8, v4

    sub-long v9, p3, v9

    invoke-interface {v7, v6, p2, v9, v10}, Lﹳᵢ/ᴵˊ;->ⁱˊ(Lﹳᵢ/ᵢˏ;Lᵔⁱ/ˑﹳ;J)Lﹳᵢ/ʾᵎ;

    move-result-object v7

    aput-object v7, v2, v4

    iget-object v7, p0, Lﹳᵢ/ᵎˊ;->ᵔי:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    new-instance v8, Lﹳᵢ/ٴʼ;

    aget-object v9, v2, v4

    invoke-direct {v8, v6, v9}, Lﹳᵢ/ٴʼ;-><init>(Lﹳᵢ/ᵢˏ;Lﹳᵢ/ʾᵎ;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lﹳᵢ/ᵎⁱ;

    iget-object p2, p0, Lﹳᵢ/ᵎˊ;->ˋᵔ:[[J

    aget-object p2, p2, v5

    iget-object p3, p0, Lﹳᵢ/ᵎˊ;->ˈʿ:Lᵔﹶ/ˈٴ;

    invoke-direct {p1, p3, p2, v2}, Lﹳᵢ/ᵎⁱ;-><init>(Lᵔﹶ/ˈٴ;[J[Lﹳᵢ/ʾᵎ;)V

    return-object p1
.end method

.method public final ﹳٴ()Lʽⁱ/ᴵˊ;
    .locals 2

    .prologue
    iget-object v0, p0, Lﹳᵢ/ᵎˊ;->ᵎˊ:[Lﹳᵢ/ᴵˊ;

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lﹳᵢ/ᴵˊ;->ﹳٴ()Lʽⁱ/ᴵˊ;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lﹳᵢ/ᵎˊ;->ʼˈ:Lʽⁱ/ᴵˊ;

    return-object v0
.end method
