.class public final Lﹶˎ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Ljava/util/List;

.field public ʼᐧ:Landroid/net/Uri;

.field public final ʽ:Lـˊ/ﾞᴵ;

.field public final ˆʾ:Lⁱʽ/ﹳٴ;

.field public final ˈ:Lⁱʽ/ﹳٴ;

.field public ˉʿ:[B

.field public ˉˆ:Landroid/net/Uri;

.field public final ˑﹳ:[Landroid/net/Uri;

.field public יـ:J

.field public final ٴﹶ:Lʻʿ/יـ;

.field public final ᵎﹶ:Lʽˑ/ʽ;

.field public ᵔʾ:Landroidx/media3/exoplayer/source/BehindLiveWindowException;

.field public final ᵔᵢ:Lʽⁱ/ـˏ;

.field public ᵔﹳ:Z

.field public final ⁱˊ:Lـˊ/ﾞᴵ;

.field public final ﹳٴ:Lﹶˎ/ʽ;

.field public ﹳᐧ:Lﹶʽ/ˏי;

.field public ﾞʻ:Z

.field public final ﾞᴵ:[Lʽⁱ/ﹳᐧ;


# direct methods
.method public constructor <init>(Lﹶˎ/ʽ;Lʽˑ/ʽ;[Landroid/net/Uri;[Lʽⁱ/ﹳᐧ;Lᐧﹳ/ʽ;Lـˊ/ᵔﹳ;Lⁱʽ/ﹳٴ;Ljava/util/List;Lʻʿ/יـ;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶˎ/ᵎﹶ;->ﹳٴ:Lﹶˎ/ʽ;

    iput-object p2, p0, Lﹶˎ/ᵎﹶ;->ᵎﹶ:Lʽˑ/ʽ;

    iput-object p3, p0, Lﹶˎ/ᵎﹶ;->ˑﹳ:[Landroid/net/Uri;

    iput-object p4, p0, Lﹶˎ/ᵎﹶ;->ﾞᴵ:[Lʽⁱ/ﹳᐧ;

    iput-object p7, p0, Lﹶˎ/ᵎﹶ;->ˈ:Lⁱʽ/ﹳٴ;

    iput-object p8, p0, Lﹶˎ/ᵎﹶ;->ʼˎ:Ljava/util/List;

    iput-object p9, p0, Lﹶˎ/ᵎﹶ;->ٴﹶ:Lʻʿ/יـ;

    new-instance p1, Lⁱʽ/ﹳٴ;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lⁱʽ/ﹳٴ;-><init>(I)V

    iput-object p1, p0, Lﹶˎ/ᵎﹶ;->ˆʾ:Lⁱʽ/ﹳٴ;

    sget-object p1, Lᐧˎ/ʼʼ;->ⁱˊ:[B

    iput-object p1, p0, Lﹶˎ/ᵎﹶ;->ˉʿ:[B

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lﹶˎ/ᵎﹶ;->יـ:J

    iget-object p1, p5, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lـˊ/ˑﹳ;

    invoke-interface {p1}, Lـˊ/ˑﹳ;->ˆʾ()Lـˊ/ﾞᴵ;

    move-result-object p1

    iput-object p1, p0, Lﹶˎ/ᵎﹶ;->ⁱˊ:Lـˊ/ﾞᴵ;

    if-eqz p6, :cond_0

    invoke-interface {p1, p6}, Lـˊ/ﾞᴵ;->ˉʿ(Lـˊ/ᵔﹳ;)V

    :cond_0
    iget-object p1, p5, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lـˊ/ˑﹳ;

    invoke-interface {p1}, Lـˊ/ˑﹳ;->ˆʾ()Lـˊ/ﾞᴵ;

    move-result-object p1

    iput-object p1, p0, Lﹶˎ/ᵎﹶ;->ʽ:Lـˊ/ﾞᴵ;

    new-instance p1, Lʽⁱ/ـˏ;

    const-string p2, ""

    invoke-direct {p1, p2, p4}, Lʽⁱ/ـˏ;-><init>(Ljava/lang/String;[Lʽⁱ/ﹳᐧ;)V

    iput-object p1, p0, Lﹶˎ/ᵎﹶ;->ᵔᵢ:Lʽⁱ/ـˏ;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    move p5, p2

    :goto_0
    array-length p6, p3

    if-ge p5, p6, :cond_2

    aget-object p6, p4, p5

    iget p6, p6, Lʽⁱ/ﹳᐧ;->ﾞᴵ:I

    and-int/lit16 p6, p6, 0x4000

    if-nez p6, :cond_1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_2
    new-instance p3, Lﹶˎ/ﾞᴵ;

    iget-object p4, p0, Lﹶˎ/ᵎﹶ;->ᵔᵢ:Lʽⁱ/ـˏ;

    invoke-static {p1}, Lˈˊ/ˉˆ;->ˊʻ(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-direct {p3, p4, p1}, Lﹶʽ/ʽ;-><init>(Lʽⁱ/ـˏ;[I)V

    aget p1, p1, p2

    iget-object p2, p4, Lʽⁱ/ـˏ;->ˈ:[Lʽⁱ/ﹳᐧ;

    aget-object p1, p2, p1

    invoke-virtual {p3, p1}, Lﹶʽ/ʽ;->ʼᐧ(Lʽⁱ/ﹳᐧ;)I

    move-result p1

    iput p1, p3, Lﹶˎ/ﾞᴵ;->ᵎﹶ:I

    iput-object p3, p0, Lﹶˎ/ᵎﹶ;->ﹳᐧ:Lﹶʽ/ˏי;

    return-void
.end method

.method public static ˈ(Lʽˑ/ﾞʻ;JI)Lᐧᵎ/ﹳﹳ;
    .locals 7

    .prologue
    iget-wide v0, p0, Lʽˑ/ﾞʻ;->ٴﹶ:J

    iget-object v2, p0, Lʽˑ/ﾞʻ;->יـ:Lʼʻ/ᵎⁱ;

    sub-long v0, p1, v0

    long-to-int v0, v0

    iget-object p0, p0, Lʽˑ/ﾞʻ;->ﹳᐧ:Lʼʻ/ᵎⁱ;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v0, v1, :cond_1

    if-eq p3, v4, :cond_0

    goto :goto_0

    :cond_0
    move p3, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-ge p3, p0, :cond_5

    new-instance p0, Lᐧᵎ/ﹳﹳ;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʽˑ/ˆʾ;

    invoke-direct {p0, v0, p1, p2, p3}, Lᐧᵎ/ﹳﹳ;-><init>(Lʽˑ/ˆʾ;JI)V

    return-object p0

    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʽˑ/ʼˎ;

    if-ne p3, v4, :cond_2

    new-instance p0, Lᐧᵎ/ﹳﹳ;

    invoke-direct {p0, v1, p1, p2, v4}, Lᐧᵎ/ﹳﹳ;-><init>(Lʽˑ/ˆʾ;JI)V

    return-object p0

    :cond_2
    iget-object v5, v1, Lʽˑ/ʼˎ;->ˆﾞ:Lʼʻ/ᵎⁱ;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge p3, v5, :cond_3

    new-instance p0, Lᐧᵎ/ﹳﹳ;

    iget-object v0, v1, Lʽˑ/ʼˎ;->ˆﾞ:Lʼʻ/ᵎⁱ;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʽˑ/ˆʾ;

    invoke-direct {p0, v0, p1, p2, p3}, Lᐧᵎ/ﹳﹳ;-><init>(Lʽˑ/ˆʾ;JI)V

    return-object p0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    const-wide/16 v5, 0x1

    if-ge v0, p3, :cond_4

    new-instance p3, Lᐧᵎ/ﹳﹳ;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lʽˑ/ˆʾ;

    add-long/2addr p1, v5

    invoke-direct {p3, p0, p1, p2, v4}, Lᐧᵎ/ﹳﹳ;-><init>(Lʽˑ/ˆʾ;JI)V

    return-object p3

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    new-instance p0, Lᐧᵎ/ﹳﹳ;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lʽˑ/ˆʾ;

    add-long/2addr p1, v5

    invoke-direct {p0, p3, p1, p2, v3}, Lᐧᵎ/ﹳﹳ;-><init>(Lʽˑ/ˆʾ;JI)V

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final ʽ(Lﹶˎ/ᵔᵢ;ZLʽˑ/ﾞʻ;JJ)Landroid/util/Pair;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eqz p1, :cond_4

    iget-wide v2, p1, Lᵢˋ/ﾞʻ;->ٴʼ:J

    iget v4, p1, Lﹶˎ/ᵔᵢ;->ˈʿ:I

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p2, p1, Lﹶˎ/ᵔᵢ;->ـﹶ:Z

    if-eqz p2, :cond_3

    new-instance p2, Landroid/util/Pair;

    if-ne v4, v1, :cond_1

    invoke-virtual {p1}, Lᵢˋ/ﾞʻ;->ﹳٴ()J

    move-result-wide v2

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    if-ne v4, v1, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v4, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_3
    new-instance p1, Landroid/util/Pair;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_4
    :goto_1
    iget-wide v2, p3, Lʽˑ/ﾞʻ;->ʽﹳ:J

    iget-object p2, p3, Lʽˑ/ﾞʻ;->יـ:Lʼʻ/ᵎⁱ;

    iget-wide v4, p3, Lʽˑ/ﾞʻ;->ٴﹶ:J

    iget-object v6, p3, Lʽˑ/ﾞʻ;->ﹳᐧ:Lʼʻ/ᵎⁱ;

    add-long/2addr v2, p4

    if-eqz p1, :cond_6

    iget-boolean v7, p0, Lﹶˎ/ᵎﹶ;->ᵔﹳ:Z

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    iget-wide p6, p1, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    :cond_6
    :goto_2
    iget-boolean p3, p3, Lʽˑ/ﾞʻ;->ˉˆ:Z

    if-nez p3, :cond_7

    cmp-long p3, p6, v2

    if-ltz p3, :cond_7

    new-instance p1, Landroid/util/Pair;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p2

    int-to-long p2, p2

    add-long/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_7
    sub-long/2addr p6, p4

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iget-object p4, p0, Lﹶˎ/ᵎﹶ;->ᵎﹶ:Lʽˑ/ʽ;

    iget-boolean p4, p4, Lʽˑ/ʽ;->ˆﾞ:Z

    const/4 p5, 0x0

    if-eqz p4, :cond_9

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    move v0, p5

    :cond_9
    :goto_3
    invoke-static {v6, p3, v0}, Lᐧˎ/ʼʼ;->ⁱˊ(Ljava/util/List;Ljava/lang/Long;Z)I

    move-result p1

    int-to-long p3, p1

    add-long/2addr p3, v4

    if-ltz p1, :cond_d

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʽˑ/ʼˎ;

    iget-wide v2, p1, Lʽˑ/ˆʾ;->ᴵᵔ:J

    iget-wide v4, p1, Lʽˑ/ˆʾ;->ʽʽ:J

    add-long/2addr v2, v4

    cmp-long v0, p6, v2

    if-gez v0, :cond_a

    iget-object p1, p1, Lʽˑ/ʼˎ;->ˆﾞ:Lʼʻ/ᵎⁱ;

    goto :goto_4

    :cond_a
    move-object p1, p2

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p5, v0, :cond_d

    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʽˑ/ᵎﹶ;

    iget-wide v2, v0, Lʽˑ/ˆʾ;->ᴵᵔ:J

    iget-wide v4, v0, Lʽˑ/ˆʾ;->ʽʽ:J

    add-long/2addr v2, v4

    cmp-long v2, p6, v2

    if-gez v2, :cond_c

    iget-boolean p6, v0, Lʽˑ/ᵎﹶ;->ᵔי:Z

    if-eqz p6, :cond_d

    if-ne p1, p2, :cond_b

    const-wide/16 p1, 0x1

    goto :goto_5

    :cond_b
    const-wide/16 p1, 0x0

    :goto_5
    add-long/2addr p3, p1

    move v1, p5

    goto :goto_6

    :cond_c
    add-int/lit8 p5, p5, 0x1

    goto :goto_4

    :cond_d
    :goto_6
    new-instance p1, Landroid/util/Pair;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final ˑﹳ(Landroid/net/Uri;IZ)Lﹶˎ/ˈ;
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    const/4 v1, 0x0

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    iget-object v3, v0, Lﹶˎ/ᵎﹶ;->ˆʾ:Lⁱʽ/ﹳٴ;

    iget-object v4, v3, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Lʼˊ/ʽ;

    invoke-virtual {v4, v2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-eqz v4, :cond_1

    iget-object v3, v3, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Lʼˊ/ʽ;

    invoke-virtual {v3, v2, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    return-object v1

    :cond_1
    sget-object v5, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    new-instance v1, Lـˊ/ᵔᵢ;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct/range {v1 .. v11}, Lـˊ/ᵔᵢ;-><init>(Landroid/net/Uri;I[BLjava/util/Map;JJLjava/lang/String;I)V

    new-instance v6, Lﹶˎ/ˈ;

    iget-object v2, v0, Lﹶˎ/ᵎﹶ;->ﾞᴵ:[Lʽⁱ/ﹳᐧ;

    aget-object v10, v2, p2

    iget-object v2, v0, Lﹶˎ/ᵎﹶ;->ﹳᐧ:Lﹶʽ/ˏי;

    invoke-interface {v2}, Lﹶʽ/ˏי;->ˉʿ()I

    move-result v11

    iget-object v2, v0, Lﹶˎ/ᵎﹶ;->ﹳᐧ:Lﹶʽ/ˏי;

    invoke-interface {v2}, Lﹶʽ/ˏי;->ﹳᐧ()Ljava/lang/Object;

    move-result-object v12

    iget-object v2, v0, Lﹶˎ/ᵎﹶ;->ˉʿ:[B

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v7, v0, Lﹶˎ/ᵎﹶ;->ʽ:Lـˊ/ﾞᴵ;

    const/4 v9, 0x3

    move-object v8, v1

    invoke-direct/range {v6 .. v16}, Lᵢˋ/ˑﹳ;-><init>(Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;ILʽⁱ/ﹳᐧ;ILjava/lang/Object;JJ)V

    if-nez v2, :cond_2

    sget-object v2, Lᐧˎ/ʼʼ;->ⁱˊ:[B

    :cond_2
    iput-object v2, v6, Lﹶˎ/ˈ;->ٴʼ:[B

    return-object v6
.end method

.method public final ⁱˊ(Lﹶˎ/ᵔᵢ;)I
    .locals 8

    .prologue
    iget v0, p1, Lﹶˎ/ᵔᵢ;->ˈʿ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lﹶˎ/ᵎﹶ;->ᵔᵢ:Lʽⁱ/ـˏ;

    iget-object v2, p1, Lᵢˋ/ˑﹳ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {v1, v2}, Lʽⁱ/ـˏ;->ﹳٴ(Lʽⁱ/ﹳᐧ;)I

    move-result v1

    iget-object v2, p0, Lﹶˎ/ᵎﹶ;->ˑﹳ:[Landroid/net/Uri;

    aget-object v1, v2, v1

    iget-object v2, p0, Lﹶˎ/ᵎﹶ;->ᵎﹶ:Lʽˑ/ʽ;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lʽˑ/ʽ;->ﹳٴ(Landroid/net/Uri;Z)Lʽˑ/ﾞʻ;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lʽˑ/ﾞʻ;->ﹳᐧ:Lʼʻ/ᵎⁱ;

    iget-wide v4, p1, Lᵢˋ/ﾞʻ;->ٴʼ:J

    iget-wide v6, v1, Lʽˑ/ﾞʻ;->ٴﹶ:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʽˑ/ʼˎ;

    iget-object v2, v2, Lʽˑ/ʼˎ;->ˆﾞ:Lʼʻ/ᵎⁱ;

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lʽˑ/ﾞʻ;->יـ:Lʼʻ/ᵎⁱ;

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʽˑ/ᵎﹶ;

    iget-boolean v2, v0, Lʽˑ/ᵎﹶ;->ˆﾞ:Z

    if-eqz v2, :cond_4

    return v3

    :cond_4
    iget-object v1, v1, Lʽˑ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    iget-object v0, v0, Lʽˑ/ˆʾ;->ʾˋ:Ljava/lang/String;

    invoke-static {v1, v0}, Lᐧˎ/ﹳٴ;->ʾˋ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p1, p1, Lᵢˋ/ˑﹳ;->ᴵˊ:Lـˊ/ᵔᵢ;

    iget-object p1, p1, Lـˊ/ᵔᵢ;->ﹳٴ:Landroid/net/Uri;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_2
    const/4 p1, 0x2

    return p1
.end method

.method public final ﹳٴ(Lﹶˎ/ᵔᵢ;J)[Lᵢˋ/ˉʿ;
    .locals 18

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v8, -0x1

    if-nez v1, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lﹶˎ/ᵎﹶ;->ᵔᵢ:Lʽⁱ/ـˏ;

    iget-object v3, v1, Lᵢˋ/ˑﹳ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {v2, v3}, Lʽⁱ/ـˏ;->ﹳٴ(Lʽⁱ/ﹳᐧ;)I

    move-result v2

    move v9, v2

    :goto_0
    iget-object v2, v0, Lﹶˎ/ᵎﹶ;->ﹳᐧ:Lﹶʽ/ˏי;

    invoke-interface {v2}, Lﹶʽ/ˏי;->length()I

    move-result v10

    new-array v11, v10, [Lᵢˋ/ˉʿ;

    const/4 v12, 0x0

    move v13, v12

    :goto_1
    if-ge v13, v10, :cond_b

    iget-object v2, v0, Lﹶˎ/ᵎﹶ;->ﹳᐧ:Lﹶʽ/ˏי;

    invoke-interface {v2, v13}, Lﹶʽ/ˏי;->ﾞᴵ(I)I

    move-result v2

    iget-object v3, v0, Lﹶˎ/ᵎﹶ;->ˑﹳ:[Landroid/net/Uri;

    aget-object v3, v3, v2

    iget-object v4, v0, Lﹶˎ/ᵎﹶ;->ᵎﹶ:Lʽˑ/ʽ;

    invoke-virtual {v4, v3}, Lʽˑ/ʽ;->ʽ(Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v2, Lᵢˋ/ˉʿ;->ـˆ:Lᵔﹶ/ˈٴ;

    aput-object v2, v11, v13

    goto/16 :goto_7

    :cond_1
    invoke-virtual {v4, v3, v12}, Lʽˑ/ʽ;->ﹳٴ(Landroid/net/Uri;Z)Lʽˑ/ﾞʻ;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, v3, Lʽˑ/ﾞʻ;->ᵔᵢ:J

    iget-wide v14, v4, Lʽˑ/ʽ;->ᵔٴ:J

    sub-long/2addr v5, v14

    if-eq v2, v9, :cond_2

    const/4 v2, 0x1

    :goto_2
    move-wide v4, v5

    move-wide/from16 v6, p2

    goto :goto_3

    :cond_2
    move v2, v12

    goto :goto_2

    :goto_3
    invoke-virtual/range {v0 .. v7}, Lﹶˎ/ᵎﹶ;->ʽ(Lﹶˎ/ᵔᵢ;ZLʽˑ/ﾞʻ;JJ)Landroid/util/Pair;

    move-result-object v2

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v6, Lﹶˎ/ˑﹳ;

    iget-wide v14, v3, Lʽˑ/ﾞʻ;->ٴﹶ:J

    iget-object v7, v3, Lʽˑ/ﾞʻ;->יـ:Lʼʻ/ᵎⁱ;

    iget-object v12, v3, Lʽˑ/ﾞʻ;->ﹳᐧ:Lʼʻ/ᵎⁱ;

    sub-long/2addr v0, v14

    long-to-int v0, v0

    if-ltz v0, :cond_a

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_3

    goto :goto_5

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v0, v14, :cond_7

    if-eq v2, v8, :cond_6

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lʽˑ/ʼˎ;

    if-nez v2, :cond_4

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    iget-object v15, v14, Lʽˑ/ʼˎ;->ˆﾞ:Lʼʻ/ᵎⁱ;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v2, v15, :cond_5

    iget-object v14, v14, Lʽˑ/ʼˎ;->ˆﾞ:Lʼʻ/ᵎⁱ;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    invoke-interface {v14, v2, v15}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    :cond_6
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v12, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    :cond_7
    iget-wide v14, v3, Lʽˑ/ﾞʻ;->ᵔʾ:J

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v14, v16

    if-eqz v0, :cond_9

    if-ne v2, v8, :cond_8

    const/4 v2, 0x0

    :cond_8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v7, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_6

    :cond_a
    :goto_5
    sget-object v0, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v0, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    :goto_6
    invoke-direct {v6, v4, v5, v0}, Lﹶˎ/ˑﹳ;-><init>(JLjava/util/List;)V

    aput-object v6, v11, v13

    :goto_7
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_b
    return-object v11
.end method
