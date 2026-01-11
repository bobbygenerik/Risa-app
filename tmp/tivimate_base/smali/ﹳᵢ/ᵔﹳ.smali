.class public final Lﹳᵢ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lـˊ/ﾞᴵ;


# instance fields
.field public final ʽʽ:Lﹳᵢ/ᵔٴ;

.field public final ʾˋ:Lـˊ/ﾞᴵ;

.field public final ˈٴ:[B

.field public final ᴵˊ:I

.field public ᴵᵔ:I


# direct methods
.method public constructor <init>(Lـˊ/ﾞᴵ;ILﹳᵢ/ᵔٴ;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    iput-object p1, p0, Lﹳᵢ/ᵔﹳ;->ʾˋ:Lـˊ/ﾞᴵ;

    iput p2, p0, Lﹳᵢ/ᵔﹳ;->ᴵˊ:I

    iput-object p3, p0, Lﹳᵢ/ᵔﹳ;->ʽʽ:Lﹳᵢ/ᵔٴ;

    new-array p1, v0, [B

    iput-object p1, p0, Lﹳᵢ/ᵔﹳ;->ˈٴ:[B

    iput p2, p0, Lﹳᵢ/ᵔﹳ;->ᴵᵔ:I

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final read([BII)I
    .locals 14

    .prologue
    iget v0, p0, Lﹳᵢ/ᵔﹳ;->ᴵᵔ:I

    iget-object v1, p0, Lﹳᵢ/ᵔﹳ;->ʾˋ:Lـˊ/ﾞᴵ;

    const/4 v2, -0x1

    if-nez v0, :cond_7

    iget-object v0, p0, Lﹳᵢ/ᵔﹳ;->ˈٴ:[B

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v0, v3, v4}, Lʽⁱ/ˆʾ;->read([BII)I

    move-result v5

    if-ne v5, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    goto :goto_5

    :cond_1
    new-array v5, v0, [B

    move v6, v0

    :goto_0
    if-lez v6, :cond_3

    invoke-interface {v1, v5, v3, v6}, Lʽⁱ/ˆʾ;->read([BII)I

    move-result v7

    if-ne v7, v2, :cond_2

    :goto_1
    return v2

    :cond_2
    add-int/2addr v3, v7

    sub-int/2addr v6, v7

    goto :goto_0

    :cond_3
    :goto_2
    if-lez v0, :cond_4

    add-int/lit8 v3, v0, -0x1

    aget-byte v3, v5, v3

    if-nez v3, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    if-lez v0, :cond_6

    new-instance v3, Lᐧˎ/ﹳᐧ;

    invoke-direct {v3, v0, v5}, Lᐧˎ/ﹳᐧ;-><init>(I[B)V

    iget-object v0, p0, Lﹳᵢ/ᵔﹳ;->ʽʽ:Lﹳᵢ/ᵔٴ;

    iget-boolean v5, v0, Lﹳᵢ/ᵔٴ;->ᵔי:Z

    if-nez v5, :cond_5

    iget-wide v5, v0, Lﹳᵢ/ᵔٴ;->ᵎⁱ:J

    :goto_3
    move-wide v8, v5

    goto :goto_4

    :cond_5
    iget-object v5, v0, Lﹳᵢ/ᵔٴ;->ˆﾞ:Lﹳᵢ/ˋᵔ;

    invoke-virtual {v5, v4}, Lﹳᵢ/ˋᵔ;->ʾᵎ(Z)J

    move-result-wide v5

    iget-wide v7, v0, Lﹳᵢ/ᵔٴ;->ᵎⁱ:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    goto :goto_3

    :goto_4
    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v11

    iget-object v7, v0, Lﹳᵢ/ᵔٴ;->ᵎˊ:Lˊﾞ/ٴᵢ;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v7, v11, v3}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x1

    invoke-interface/range {v7 .. v13}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iput-boolean v4, v0, Lﹳᵢ/ᵔٴ;->ᵔי:Z

    :cond_6
    :goto_5
    iget v0, p0, Lﹳᵢ/ᵔﹳ;->ᴵˊ:I

    iput v0, p0, Lﹳᵢ/ᵔﹳ;->ᴵᵔ:I

    :cond_7
    iget v0, p0, Lﹳᵢ/ᵔﹳ;->ᴵᵔ:I

    move/from16 v3, p3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    move/from16 v3, p2

    invoke-interface {v1, p1, v3, v0}, Lʽⁱ/ˆʾ;->read([BII)I

    move-result p1

    if-eq p1, v2, :cond_8

    iget v0, p0, Lﹳᵢ/ᵔﹳ;->ᴵᵔ:I

    sub-int/2addr v0, p1

    iput v0, p0, Lﹳᵢ/ᵔﹳ;->ᴵᵔ:I

    :cond_8
    return p1
.end method

.method public final ʽʽ(Lـˊ/ᵔᵢ;)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final ˉʿ(Lـˊ/ᵔﹳ;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lﹳᵢ/ᵔﹳ;->ʾˋ:Lـˊ/ﾞᴵ;

    invoke-interface {v0, p1}, Lـˊ/ﾞᴵ;->ˉʿ(Lـˊ/ᵔﹳ;)V

    return-void
.end method

.method public final יـ()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lﹳᵢ/ᵔﹳ;->ʾˋ:Lـˊ/ﾞᴵ;

    invoke-interface {v0}, Lـˊ/ﾞᴵ;->יـ()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final ٴﹶ()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lﹳᵢ/ᵔﹳ;->ʾˋ:Lـˊ/ﾞᴵ;

    invoke-interface {v0}, Lـˊ/ﾞᴵ;->ٴﹶ()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
