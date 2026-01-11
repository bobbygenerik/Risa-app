.class public final Lˎᵢ/ˏי;
.super Lˎᵢ/ʾˋ;
.source "SourceFile"


# static fields
.field public static final ʼˎ:[B

.field public static final ˑﹳ:Lˎᵢ/ﹳᐧ;

.field public static final ᵎﹶ:[B

.field public static final ᵔᵢ:[B

.field public static final ﾞᴵ:Lˎᵢ/ﹳᐧ;


# instance fields
.field public final ʽ:Lˎᵢ/ﹳᐧ;

.field public ˈ:J

.field public final ⁱˊ:Ljava/util/List;

.field public final ﹳٴ:Lˊᐧ/ʼˎ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget-object v0, Lˎᵢ/ﹳᐧ;->ˈ:Lﹶˑ/ʼˎ;

    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lˈˊ/ᵔʾ;->ﾞʻ(Ljava/lang/String;)Lˎᵢ/ﹳᐧ;

    move-result-object v0

    sput-object v0, Lˎᵢ/ˏי;->ˑﹳ:Lˎᵢ/ﹳᐧ;

    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lˈˊ/ᵔʾ;->ﾞʻ(Ljava/lang/String;)Lˎᵢ/ﹳᐧ;

    const-string v0, "multipart/digest"

    invoke-static {v0}, Lˈˊ/ᵔʾ;->ﾞʻ(Ljava/lang/String;)Lˎᵢ/ﹳᐧ;

    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lˈˊ/ᵔʾ;->ﾞʻ(Ljava/lang/String;)Lˎᵢ/ﹳᐧ;

    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lˈˊ/ᵔʾ;->ﾞʻ(Ljava/lang/String;)Lˎᵢ/ﹳᐧ;

    move-result-object v0

    sput-object v0, Lˎᵢ/ˏי;->ﾞᴵ:Lˎᵢ/ﹳᐧ;

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lˎᵢ/ˏי;->ᵎﹶ:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lˎᵢ/ˏי;->ᵔᵢ:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lˎᵢ/ˏי;->ʼˎ:[B

    return-void

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>(Lˊᐧ/ʼˎ;Lˎᵢ/ﹳᐧ;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎᵢ/ˏי;->ﹳٴ:Lˊᐧ/ʼˎ;

    iput-object p3, p0, Lˎᵢ/ˏי;->ⁱˊ:Ljava/util/List;

    sget-object p3, Lˎᵢ/ﹳᐧ;->ˈ:Lﹶˑ/ʼˎ;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lˊᐧ/ʼˎ;->ʼᐧ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ﾞʻ(Ljava/lang/String;)Lˎᵢ/ﹳᐧ;

    move-result-object p1

    iput-object p1, p0, Lˎᵢ/ˏי;->ʽ:Lˎᵢ/ﹳᐧ;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lˎᵢ/ˏי;->ˈ:J

    return-void
.end method


# virtual methods
.method public final ʽ()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lˎᵢ/ˏי;->ⁱˊ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˎᵢ/יـ;

    iget-object v1, v1, Lˎᵢ/יـ;->ⁱˊ:Lˎᵢ/ʾˋ;

    invoke-virtual {v1}, Lˎᵢ/ʾˋ;->ʽ()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˈ(Lˊᐧ/ᵎﹶ;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lˎᵢ/ˏי;->ˑﹳ(Lˊᐧ/ᵎﹶ;Z)J

    return-void
.end method

.method public final ˑﹳ(Lˊᐧ/ᵎﹶ;Z)J
    .locals 16

    .prologue
    move-object/from16 v0, p0

    if-eqz p2, :cond_0

    new-instance v1, Lˊᐧ/ﾞᴵ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v2, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    move-object/from16 v1, p1

    :goto_0
    iget-object v3, v0, Lˎᵢ/ˏי;->ⁱˊ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move v8, v5

    :goto_1
    iget-object v9, v0, Lˎᵢ/ˏי;->ﹳٴ:Lˊᐧ/ʼˎ;

    sget-object v10, Lˎᵢ/ˏי;->ʼˎ:[B

    sget-object v11, Lˎᵢ/ˏי;->ᵔᵢ:[B

    if-ge v8, v4, :cond_5

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lˎᵢ/יـ;

    iget-object v13, v12, Lˎᵢ/יـ;->ﹳٴ:Lˎᵢ/ˉˆ;

    iget-object v12, v12, Lˎᵢ/יـ;->ⁱˊ:Lˎᵢ/ʾˋ;

    invoke-interface {v1, v10}, Lˊᐧ/ᵎﹶ;->write([B)Lˊᐧ/ᵎﹶ;

    invoke-interface {v1, v9}, Lˊᐧ/ᵎﹶ;->ﾞʻ(Lˊᐧ/ʼˎ;)Lˊᐧ/ᵎﹶ;

    invoke-interface {v1, v11}, Lˊᐧ/ᵎﹶ;->write([B)Lˊᐧ/ᵎﹶ;

    invoke-virtual {v13}, Lˎᵢ/ˉˆ;->size()I

    move-result v9

    move v10, v5

    :goto_2
    if-ge v10, v9, :cond_1

    invoke-virtual {v13, v10}, Lˎᵢ/ˉˆ;->ⁱˊ(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v14}, Lˊᐧ/ᵎﹶ;->ᐧᴵ(Ljava/lang/String;)Lˊᐧ/ᵎﹶ;

    move-result-object v14

    sget-object v15, Lˎᵢ/ˏי;->ᵎﹶ:[B

    invoke-interface {v14, v15}, Lˊᐧ/ᵎﹶ;->write([B)Lˊᐧ/ᵎﹶ;

    move-result-object v14

    invoke-virtual {v13, v10}, Lˎᵢ/ˉˆ;->ﾞᴵ(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lˊᐧ/ᵎﹶ;->ᐧᴵ(Ljava/lang/String;)Lˊᐧ/ᵎﹶ;

    move-result-object v14

    invoke-interface {v14, v11}, Lˊᐧ/ᵎﹶ;->write([B)Lˊᐧ/ᵎﹶ;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v12}, Lˎᵢ/ʾˋ;->ⁱˊ()Lˎᵢ/ﹳᐧ;

    move-result-object v9

    if-eqz v9, :cond_2

    const-string v10, "Content-Type: "

    invoke-interface {v1, v10}, Lˊᐧ/ᵎﹶ;->ᐧᴵ(Ljava/lang/String;)Lˊᐧ/ᵎﹶ;

    move-result-object v10

    iget-object v9, v9, Lˎᵢ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    invoke-interface {v10, v9}, Lˊᐧ/ᵎﹶ;->ᐧᴵ(Ljava/lang/String;)Lˊᐧ/ᵎﹶ;

    move-result-object v9

    invoke-interface {v9, v11}, Lˊᐧ/ᵎﹶ;->write([B)Lˊᐧ/ᵎﹶ;

    :cond_2
    invoke-virtual {v12}, Lˎᵢ/ʾˋ;->ﹳٴ()J

    move-result-wide v9

    const-wide/16 v13, -0x1

    cmp-long v15, v9, v13

    if-nez v15, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {v2}, Lˊᐧ/ﾞᴵ;->ـˆ()V

    return-wide v13

    :cond_3
    invoke-interface {v1, v11}, Lˊᐧ/ᵎﹶ;->write([B)Lˊᐧ/ᵎﹶ;

    if-eqz p2, :cond_4

    add-long/2addr v6, v9

    goto :goto_3

    :cond_4
    invoke-virtual {v12, v1}, Lˎᵢ/ʾˋ;->ˈ(Lˊᐧ/ᵎﹶ;)V

    :goto_3
    invoke-interface {v1, v11}, Lˊᐧ/ᵎﹶ;->write([B)Lˊᐧ/ᵎﹶ;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v1, v10}, Lˊᐧ/ᵎﹶ;->write([B)Lˊᐧ/ᵎﹶ;

    invoke-interface {v1, v9}, Lˊᐧ/ᵎﹶ;->ﾞʻ(Lˊᐧ/ʼˎ;)Lˊᐧ/ᵎﹶ;

    invoke-interface {v1, v10}, Lˊᐧ/ᵎﹶ;->write([B)Lˊᐧ/ᵎﹶ;

    invoke-interface {v1, v11}, Lˊᐧ/ᵎﹶ;->write([B)Lˊᐧ/ᵎﹶ;

    if-eqz p2, :cond_6

    iget-wide v3, v2, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    add-long/2addr v6, v3

    invoke-virtual {v2}, Lˊᐧ/ﾞᴵ;->ـˆ()V

    :cond_6
    return-wide v6
.end method

.method public final ⁱˊ()Lˎᵢ/ﹳᐧ;
    .locals 1

    iget-object v0, p0, Lˎᵢ/ˏי;->ʽ:Lˎᵢ/ﹳᐧ;

    return-object v0
.end method

.method public final ﹳٴ()J
    .locals 4

    .prologue
    iget-wide v0, p0, Lˎᵢ/ˏי;->ˈ:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lˎᵢ/ˏי;->ˑﹳ(Lˊᐧ/ᵎﹶ;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lˎᵢ/ˏי;->ˈ:J

    :cond_0
    return-wide v0
.end method
