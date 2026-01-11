.class public final Lـˊ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:[B

.field public final ˈ:Ljava/util/Map;

.field public final ˑﹳ:J

.field public final ᵎﹶ:Ljava/lang/String;

.field public final ᵔᵢ:I

.field public final ⁱˊ:I

.field public final ﹳٴ:Landroid/net/Uri;

.field public final ﾞᴵ:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.datasource"

    invoke-static {v0}, Lʽⁱ/ʽʽ;->ﹳٴ(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I[BLjava/util/Map;JJLjava/lang/String;I)V
    .locals 5

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    cmp-long v2, p5, v0

    if-ltz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    cmp-long v0, p7, v0

    if-gtz v0, :cond_2

    const-wide/16 v0, -0x1

    cmp-long v0, p7, v0

    if-nez v0, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lـˊ/ᵔᵢ;->ﹳٴ:Landroid/net/Uri;

    iput p2, p0, Lـˊ/ᵔᵢ;->ⁱˊ:I

    if-eqz p3, :cond_4

    array-length p1, p3

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p3, 0x0

    :goto_2
    iput-object p3, p0, Lـˊ/ᵔᵢ;->ʽ:[B

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lـˊ/ᵔᵢ;->ˈ:Ljava/util/Map;

    iput-wide p5, p0, Lـˊ/ᵔᵢ;->ˑﹳ:J

    iput-wide p7, p0, Lـˊ/ᵔᵢ;->ﾞᴵ:J

    iput-object p9, p0, Lـˊ/ᵔᵢ;->ᵎﹶ:Ljava/lang/String;

    iput p10, p0, Lـˊ/ᵔᵢ;->ᵔᵢ:I

    return-void
.end method

.method public static ⁱˊ(I)Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "HEAD"

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    const-string p0, "POST"

    return-object p0

    :cond_2
    const-string p0, "GET"

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataSpec["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lـˊ/ᵔᵢ;->ⁱˊ:I

    invoke-static {v1}, Lـˊ/ᵔᵢ;->ⁱˊ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lـˊ/ᵔᵢ;->ﹳٴ:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lـˊ/ᵔᵢ;->ˑﹳ:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lـˊ/ᵔᵢ;->ﾞᴵ:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lـˊ/ᵔᵢ;->ᵎﹶ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lـˊ/ᵔᵢ;->ᵔᵢ:I

    const-string v2, "]"

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˏי(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʽ(J)Lـˊ/ᵔᵢ;
    .locals 16

    .prologue
    move-object/from16 v0, p0

    iget-wide v1, v0, Lـˊ/ᵔᵢ;->ﾞᴵ:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    :goto_0
    move-wide v12, v3

    goto :goto_1

    :cond_0
    sub-long v3, v1, p1

    goto :goto_0

    :goto_1
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-nez v3, :cond_1

    cmp-long v1, v1, v12

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v5, Lـˊ/ᵔᵢ;

    iget-wide v1, v0, Lـˊ/ᵔᵢ;->ˑﹳ:J

    add-long v10, v1, p1

    iget-object v14, v0, Lـˊ/ᵔᵢ;->ᵎﹶ:Ljava/lang/String;

    iget v15, v0, Lـˊ/ᵔᵢ;->ᵔᵢ:I

    iget-object v6, v0, Lـˊ/ᵔᵢ;->ﹳٴ:Landroid/net/Uri;

    iget v7, v0, Lـˊ/ᵔᵢ;->ⁱˊ:I

    iget-object v8, v0, Lـˊ/ᵔᵢ;->ʽ:[B

    iget-object v9, v0, Lـˊ/ᵔᵢ;->ˈ:Ljava/util/Map;

    invoke-direct/range {v5 .. v15}, Lـˊ/ᵔᵢ;-><init>(Landroid/net/Uri;I[BLjava/util/Map;JJLjava/lang/String;I)V

    return-object v5
.end method

.method public final ﹳٴ()Lיˑ/ʽ;
    .locals 3

    new-instance v0, Lיˑ/ʽ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lـˊ/ᵔᵢ;->ﹳٴ:Landroid/net/Uri;

    iput-object v1, v0, Lיˑ/ʽ;->ˑﹳ:Ljava/lang/Object;

    iget v1, p0, Lـˊ/ᵔᵢ;->ⁱˊ:I

    iput v1, v0, Lיˑ/ʽ;->ﹳٴ:I

    iget-object v1, p0, Lـˊ/ᵔᵢ;->ʽ:[B

    iput-object v1, v0, Lיˑ/ʽ;->ﾞᴵ:Ljava/lang/Object;

    iget-object v1, p0, Lـˊ/ᵔᵢ;->ˈ:Ljava/util/Map;

    iput-object v1, v0, Lיˑ/ʽ;->ᵎﹶ:Ljava/lang/Object;

    iget-wide v1, p0, Lـˊ/ᵔᵢ;->ˑﹳ:J

    iput-wide v1, v0, Lיˑ/ʽ;->ⁱˊ:J

    iget-wide v1, p0, Lـˊ/ᵔᵢ;->ﾞᴵ:J

    iput-wide v1, v0, Lיˑ/ʽ;->ʽ:J

    iget-object v1, p0, Lـˊ/ᵔᵢ;->ᵎﹶ:Ljava/lang/String;

    iput-object v1, v0, Lיˑ/ʽ;->ᵔᵢ:Ljava/lang/Object;

    iget v1, p0, Lـˊ/ᵔᵢ;->ᵔᵢ:I

    iput v1, v0, Lיˑ/ʽ;->ˈ:I

    return-object v0
.end method
