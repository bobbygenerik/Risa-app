.class public final Lʽⁱ/ˊˋ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ᵔﹳ:Ljava/lang/Object;

.field public static final ﹳᐧ:Lʽⁱ/ᴵˊ;


# instance fields
.field public ʼˎ:Z

.field public ʼᐧ:J

.field public ʽ:Lʽⁱ/ᴵˊ;

.field public ˆʾ:Lʽⁱ/ʾᵎ;

.field public ˈ:Ljava/lang/Object;

.field public ˉʿ:J

.field public ˉˆ:I

.field public ˑﹳ:J

.field public ٴﹶ:Z

.field public ᵎﹶ:J

.field public ᵔʾ:I

.field public ᵔᵢ:Z

.field public ⁱˊ:Ljava/lang/Object;

.field public ﹳٴ:Ljava/lang/Object;

.field public ﾞʻ:J

.field public ﾞᴵ:J


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʽⁱ/ˊˋ;->ᵔﹳ:Ljava/lang/Object;

    new-instance v0, Lʽⁱ/ˏי;

    invoke-direct {v0}, Lʽⁱ/ˏי;-><init>()V

    sget-object v1, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v1, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v7, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    new-instance v1, Lʽⁱ/ـˆ;

    invoke-direct {v1}, Lʽⁱ/ـˆ;-><init>()V

    sget-object v14, Lʽⁱ/ᵢˏ;->ﹳٴ:Lʽⁱ/ᵢˏ;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    new-instance v2, Lʽⁱ/ʼʼ;

    const/4 v4, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v2 .. v9}, Lʽⁱ/ʼʼ;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/bumptech/glide/ʽ;Ljava/util/List;Lʼʻ/ᵎⁱ;J)V

    move-object v11, v2

    goto :goto_0

    :cond_0
    move-object v11, v5

    :goto_0
    new-instance v8, Lʽⁱ/ᴵˊ;

    new-instance v10, Lʽⁱ/ʻٴ;

    invoke-direct {v10, v0}, Lʽⁱ/ʽﹳ;-><init>(Lʽⁱ/ˏי;)V

    new-instance v12, Lʽⁱ/ʾᵎ;

    invoke-direct {v12, v1}, Lʽⁱ/ʾᵎ;-><init>(Lʽⁱ/ـˆ;)V

    sget-object v13, Lʽⁱ/ᴵᵔ;->ᴵˊ:Lʽⁱ/ᴵᵔ;

    const-string v9, "androidx.media3.common.Timeline"

    invoke-direct/range {v8 .. v14}, Lʽⁱ/ᴵˊ;-><init>(Ljava/lang/String;Lʽⁱ/ʻٴ;Lʽⁱ/ʼʼ;Lʽⁱ/ʾᵎ;Lʽⁱ/ᴵᵔ;Lʽⁱ/ᵢˏ;)V

    sput-object v8, Lʽⁱ/ˊˋ;->ﹳᐧ:Lʽⁱ/ᴵˊ;

    const/4 v0, 0x4

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-static {v2, v3, v4, v0, v1}, Lʼﾞ/ˊˋ;->ـˆ(IIIII)V

    const/16 v0, 0x9

    const/16 v1, 0xa

    const/4 v2, 0x6

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-static {v2, v3, v4, v0, v1}, Lʼﾞ/ˊˋ;->ـˆ(IIIII)V

    const/16 v0, 0xb

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/16 v0, 0xc

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/16 v0, 0xd

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lʽⁱ/ˊˋ;->ᵔﹳ:Ljava/lang/Object;

    iput-object v0, p0, Lʽⁱ/ˊˋ;->ﹳٴ:Ljava/lang/Object;

    sget-object v0, Lʽⁱ/ˊˋ;->ﹳᐧ:Lʽⁱ/ᴵˊ;

    iput-object v0, p0, Lʽⁱ/ˊˋ;->ʽ:Lʽⁱ/ᴵˊ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    if-ne p0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Lʽⁱ/ˊˋ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lʽⁱ/ˊˋ;

    iget-object v0, p0, Lʽⁱ/ˊˋ;->ﹳٴ:Ljava/lang/Object;

    iget-object v1, p1, Lʽⁱ/ˊˋ;->ﹳٴ:Ljava/lang/Object;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʽⁱ/ˊˋ;->ʽ:Lʽⁱ/ᴵˊ;

    iget-object v1, p1, Lʽⁱ/ˊˋ;->ʽ:Lʽⁱ/ᴵˊ;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʽⁱ/ˊˋ;->ˈ:Ljava/lang/Object;

    iget-object v1, p1, Lʽⁱ/ˊˋ;->ˈ:Ljava/lang/Object;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʽⁱ/ˊˋ;->ˆʾ:Lʽⁱ/ʾᵎ;

    iget-object v1, p1, Lʽⁱ/ˊˋ;->ˆʾ:Lʽⁱ/ʾᵎ;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lʽⁱ/ˊˋ;->ˑﹳ:J

    iget-wide v2, p1, Lʽⁱ/ˊˋ;->ˑﹳ:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lʽⁱ/ˊˋ;->ﾞᴵ:J

    iget-wide v2, p1, Lʽⁱ/ˊˋ;->ﾞᴵ:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lʽⁱ/ˊˋ;->ᵎﹶ:J

    iget-wide v2, p1, Lʽⁱ/ˊˋ;->ᵎﹶ:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lʽⁱ/ˊˋ;->ᵔᵢ:Z

    iget-boolean v1, p1, Lʽⁱ/ˊˋ;->ᵔᵢ:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lʽⁱ/ˊˋ;->ʼˎ:Z

    iget-boolean v1, p1, Lʽⁱ/ˊˋ;->ʼˎ:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lʽⁱ/ˊˋ;->ٴﹶ:Z

    iget-boolean v1, p1, Lʽⁱ/ˊˋ;->ٴﹶ:Z

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lʽⁱ/ˊˋ;->ﾞʻ:J

    iget-wide v2, p1, Lʽⁱ/ˊˋ;->ﾞʻ:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lʽⁱ/ˊˋ;->ˉʿ:J

    iget-wide v2, p1, Lʽⁱ/ˊˋ;->ˉʿ:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lʽⁱ/ˊˋ;->ᵔʾ:I

    iget v1, p1, Lʽⁱ/ˊˋ;->ᵔʾ:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lʽⁱ/ˊˋ;->ˉˆ:I

    iget v1, p1, Lʽⁱ/ˊˋ;->ˉˆ:I

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lʽⁱ/ˊˋ;->ʼᐧ:J

    iget-wide v2, p1, Lʽⁱ/ˊˋ;->ʼᐧ:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    iget-object v0, p0, Lʽⁱ/ˊˋ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lʽⁱ/ˊˋ;->ʽ:Lʽⁱ/ᴵˊ;

    invoke-virtual {v1}, Lʽⁱ/ᴵˊ;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lʽⁱ/ˊˋ;->ˈ:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lʽⁱ/ˊˋ;->ˆʾ:Lʽⁱ/ʾᵎ;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lʽⁱ/ʾᵎ;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lʽⁱ/ˊˋ;->ˑﹳ:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lʽⁱ/ˊˋ;->ﾞᴵ:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lʽⁱ/ˊˋ;->ᵎﹶ:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lʽⁱ/ˊˋ;->ᵔᵢ:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lʽⁱ/ˊˋ;->ʼˎ:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lʽⁱ/ˊˋ;->ٴﹶ:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lʽⁱ/ˊˋ;->ﾞʻ:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lʽⁱ/ˊˋ;->ˉʿ:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lʽⁱ/ˊˋ;->ᵔʾ:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lʽⁱ/ˊˋ;->ˉˆ:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lʽⁱ/ˊˋ;->ʼᐧ:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public final ⁱˊ(Lʽⁱ/ᴵˊ;Ljava/lang/Object;JJJZZLʽⁱ/ʾᵎ;JJIJ)V
    .locals 1

    .prologue
    sget-object v0, Lʽⁱ/ˊˋ;->ᵔﹳ:Ljava/lang/Object;

    iput-object v0, p0, Lʽⁱ/ˊˋ;->ﹳٴ:Ljava/lang/Object;

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lʽⁱ/ˊˋ;->ﹳᐧ:Lʽⁱ/ᴵˊ;

    :goto_0
    iput-object v0, p0, Lʽⁱ/ˊˋ;->ʽ:Lʽⁱ/ᴵˊ;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lʽⁱ/ˊˋ;->ⁱˊ:Ljava/lang/Object;

    iput-object p2, p0, Lʽⁱ/ˊˋ;->ˈ:Ljava/lang/Object;

    iput-wide p3, p0, Lʽⁱ/ˊˋ;->ˑﹳ:J

    iput-wide p5, p0, Lʽⁱ/ˊˋ;->ﾞᴵ:J

    iput-wide p7, p0, Lʽⁱ/ˊˋ;->ᵎﹶ:J

    iput-boolean p9, p0, Lʽⁱ/ˊˋ;->ᵔᵢ:Z

    iput-boolean p10, p0, Lʽⁱ/ˊˋ;->ʼˎ:Z

    iput-object p11, p0, Lʽⁱ/ˊˋ;->ˆʾ:Lʽⁱ/ʾᵎ;

    iput-wide p12, p0, Lʽⁱ/ˊˋ;->ﾞʻ:J

    move-wide p1, p14

    iput-wide p1, p0, Lʽⁱ/ˊˋ;->ˉʿ:J

    const/4 p1, 0x0

    iput p1, p0, Lʽⁱ/ˊˋ;->ᵔʾ:I

    move/from16 p2, p16

    iput p2, p0, Lʽⁱ/ˊˋ;->ˉˆ:I

    move-wide/from16 p2, p17

    iput-wide p2, p0, Lʽⁱ/ˊˋ;->ʼᐧ:J

    iput-boolean p1, p0, Lʽⁱ/ˊˋ;->ٴﹶ:Z

    return-void
.end method

.method public final ﹳٴ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lʽⁱ/ˊˋ;->ˆʾ:Lʽⁱ/ʾᵎ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
