.class public final Lˎʾ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˎʾ/ʼˎ;


# instance fields
.field public ʽ:I

.field public ˈ:J

.field public ˑﹳ:J

.field public ᵎﹶ:Ljava/lang/Object;

.field public ⁱˊ:I

.field public ﹳٴ:I

.field public final ﾞᴵ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IILʽⁱ/ﹳᐧ;ILjava/lang/Object;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lˎʾ/ᵎﹶ;->ﹳٴ:I

    iput p2, p0, Lˎʾ/ᵎﹶ;->ⁱˊ:I

    iput-object p3, p0, Lˎʾ/ᵎﹶ;->ﾞᴵ:Ljava/lang/Object;

    iput p4, p0, Lˎʾ/ᵎﹶ;->ʽ:I

    iput-object p5, p0, Lˎʾ/ᵎﹶ;->ᵎﹶ:Ljava/lang/Object;

    iput-wide p6, p0, Lˎʾ/ᵎﹶ;->ˈ:J

    iput-wide p8, p0, Lˎʾ/ᵎﹶ;->ˑﹳ:J

    return-void
.end method

.method public constructor <init>(Lˈـ/ﾞʻ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎʾ/ᵎﹶ;->ﾞᴵ:Ljava/lang/Object;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lˎʾ/ᵎﹶ;->ˈ:J

    const/4 p1, -0x1

    iput p1, p0, Lˎʾ/ᵎﹶ;->ⁱˊ:I

    return-void
.end method


# virtual methods
.method public ʽ(J)V
    .locals 0

    return-void
.end method

.method public ˈ(Lˊﾞ/ᵔﹳ;I)V
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object p1

    iput-object p1, p0, Lˎʾ/ᵎﹶ;->ᵎﹶ:Ljava/lang/Object;

    sget-object p2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    iget-object p2, p0, Lˎʾ/ᵎﹶ;->ﾞᴵ:Ljava/lang/Object;

    check-cast p2, Lˈـ/ﾞʻ;

    iget-object p2, p2, Lˈـ/ﾞʻ;->ʽ:Lʽⁱ/ﹳᐧ;

    invoke-interface {p1, p2}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    return-void
.end method

.method public ⁱˊ(JJ)V
    .locals 0

    iput-wide p1, p0, Lˎʾ/ᵎﹶ;->ˈ:J

    iput-wide p3, p0, Lˎʾ/ᵎﹶ;->ˑﹳ:J

    const/4 p1, 0x0

    iput p1, p0, Lˎʾ/ᵎﹶ;->ʽ:I

    return-void
.end method

.method public ﹳٴ(Lᐧˎ/ﹳᐧ;JIZ)V
    .locals 21

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    iget-object v3, v0, Lˎʾ/ᵎﹶ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v3, Lˊﾞ/ٴᵢ;

    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget v3, v0, Lˎʾ/ᵎﹶ;->ⁱˊ:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-static {v3}, Lˈـ/ʼˎ;->ﹳٴ(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    sget-object v5, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "; received: "

    const-string v6, ". Dropping packet."

    const-string v7, "Received RTP packet with unexpected sequence number. Expected: "

    invoke-static {v7, v3, v5, v2, v6}, Lﹳˎ/ˆʾ;->ʽ(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "RtpMpeg4Reader"

    invoke-static {v5, v3}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v3

    iget-object v5, v0, Lˎʾ/ᵎﹶ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v5, Lˊﾞ/ٴᵢ;

    invoke-interface {v5, v3, v1}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget v5, v0, Lˎʾ/ᵎﹶ;->ʽ:I

    const/4 v6, 0x0

    if-nez v5, :cond_5

    iget-object v5, v1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/4 v7, 0x4

    new-array v8, v7, [B

    fill-array-data v8, :array_0

    const-string v9, "array"

    invoke-static {v5, v9}, Lcom/google/android/gms/internal/play_billing/י;->ᵔᵢ(Ljava/lang/Object;Ljava/lang/String;)V

    move v9, v6

    :goto_0
    array-length v10, v5

    add-int/lit8 v10, v10, -0x3

    if-ge v9, v10, :cond_2

    move v10, v6

    :goto_1
    if-ge v10, v7, :cond_3

    add-int v11, v9, v10

    aget-byte v11, v5, v11

    aget-byte v12, v8, v10

    if-eq v11, v12, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    move v9, v4

    :cond_3
    if-eq v9, v4, :cond_4

    add-int/2addr v9, v7

    invoke-virtual {v1, v9}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ᵔᵢ()I

    move-result v1

    shr-int/lit8 v1, v1, 0x6

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v6

    :goto_2
    iput v1, v0, Lˎʾ/ᵎﹶ;->ﹳٴ:I

    :cond_5
    iget v1, v0, Lˎʾ/ᵎﹶ;->ʽ:I

    add-int/2addr v1, v3

    iput v1, v0, Lˎʾ/ᵎﹶ;->ʽ:I

    if-eqz p5, :cond_7

    iget-wide v3, v0, Lˎʾ/ᵎﹶ;->ˈ:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v3, v7

    move-wide/from16 v10, p2

    if-nez v1, :cond_6

    iput-wide v10, v0, Lˎʾ/ᵎﹶ;->ˈ:J

    :cond_6
    iget-wide v8, v0, Lˎʾ/ᵎﹶ;->ˑﹳ:J

    iget-wide v12, v0, Lˎʾ/ᵎﹶ;->ˈ:J

    const v7, 0x15f90

    invoke-static/range {v7 .. v13}, Lcom/bumptech/glide/ʽ;->ᴵᵔ(IJJJ)J

    move-result-wide v15

    iget-object v1, v0, Lˎʾ/ᵎﹶ;->ᵎﹶ:Ljava/lang/Object;

    move-object v14, v1

    check-cast v14, Lˊﾞ/ٴᵢ;

    iget v1, v0, Lˎʾ/ᵎﹶ;->ﹳٴ:I

    iget v3, v0, Lˎʾ/ᵎﹶ;->ʽ:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v17, v1

    move/from16 v18, v3

    invoke-interface/range {v14 .. v20}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iput v6, v0, Lˎʾ/ᵎﹶ;->ʽ:I

    :cond_7
    iput v2, v0, Lˎʾ/ᵎﹶ;->ⁱˊ:I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        -0x4at
    .end array-data
.end method
