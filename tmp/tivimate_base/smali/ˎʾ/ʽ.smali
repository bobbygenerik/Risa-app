.class public final Lˎʾ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˎʾ/ʼˎ;


# static fields
.field public static final ʼˎ:[I

.field public static final ᵔᵢ:[I


# instance fields
.field public final ʽ:I

.field public ˈ:Lˊﾞ/ٴᵢ;

.field public ˑﹳ:J

.field public ᵎﹶ:I

.field public final ⁱˊ:Z

.field public final ﹳٴ:Lˈـ/ﾞʻ;

.field public ﾞᴵ:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lˎʾ/ʽ;->ᵔᵢ:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lˎʾ/ʽ;->ʼˎ:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>(Lˈـ/ﾞʻ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎʾ/ʽ;->ﹳٴ:Lˈـ/ﾞʻ;

    iget-object v0, p1, Lˈـ/ﾞʻ;->ʽ:Lʽⁱ/ﹳᐧ;

    iget-object v0, v0, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "audio/amr-wb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lˎʾ/ʽ;->ⁱˊ:Z

    iget p1, p1, Lˈـ/ﾞʻ;->ⁱˊ:I

    iput p1, p0, Lˎʾ/ʽ;->ʽ:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lˎʾ/ʽ;->ˑﹳ:J

    const/4 p1, -0x1

    iput p1, p0, Lˎʾ/ʽ;->ᵎﹶ:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lˎʾ/ʽ;->ﾞᴵ:J

    return-void
.end method


# virtual methods
.method public final ʽ(J)V
    .locals 0

    iput-wide p1, p0, Lˎʾ/ʽ;->ˑﹳ:J

    return-void
.end method

.method public final ˈ(Lˊﾞ/ᵔﹳ;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object p1

    iput-object p1, p0, Lˎʾ/ʽ;->ˈ:Lˊﾞ/ٴᵢ;

    iget-object p2, p0, Lˎʾ/ʽ;->ﹳٴ:Lˈـ/ﾞʻ;

    iget-object p2, p2, Lˈـ/ﾞʻ;->ʽ:Lʽⁱ/ﹳᐧ;

    invoke-interface {p1, p2}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    return-void
.end method

.method public final ⁱˊ(JJ)V
    .locals 0

    iput-wide p1, p0, Lˎʾ/ʽ;->ˑﹳ:J

    iput-wide p3, p0, Lˎʾ/ʽ;->ﾞᴵ:J

    return-void
.end method

.method public final ﹳٴ(Lᐧˎ/ﹳᐧ;JIZ)V
    .locals 10

    .prologue
    iget-object p5, p0, Lˎʾ/ʽ;->ˈ:Lˊﾞ/ٴᵢ;

    invoke-static {p5}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget p5, p0, Lˎʾ/ʽ;->ᵎﹶ:I

    const/4 v0, -0x1

    if-eq p5, v0, :cond_0

    invoke-static {p5}, Lˈـ/ʼˎ;->ﹳٴ(I)I

    move-result p5

    if-eq p4, p5, :cond_0

    sget-object v0, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "; received: "

    const-string v1, "."

    const-string v2, "Received RTP packet with unexpected sequence number. Expected: "

    invoke-static {v2, p5, v0, p4, v1}, Lﹳˎ/ˆʾ;->ʽ(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const-string v0, "RtpAmrReader"

    invoke-static {v0, p5}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p5, 0x1

    invoke-virtual {p1, p5}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ᵔᵢ()I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    const/16 v1, 0xf

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ltz v0, :cond_1

    const/16 v3, 0x8

    if-le v0, v3, :cond_2

    :cond_1
    if-ne v0, v1, :cond_3

    :cond_2
    move v1, p5

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Illegal AMR "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lˎʾ/ʽ;->ⁱˊ:Z

    if-eqz v4, :cond_4

    const-string v5, "WB"

    goto :goto_1

    :cond_4
    const-string v5, "NB"

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " frame type "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    if-eqz v4, :cond_5

    sget-object v1, Lˎʾ/ʽ;->ʼˎ:[I

    aget v0, v1, v0

    goto :goto_2

    :cond_5
    sget-object v1, Lˎʾ/ʽ;->ᵔᵢ:[I

    aget v0, v1, v0

    :goto_2
    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v7

    if-ne v7, v0, :cond_6

    goto :goto_3

    :cond_6
    move p5, v2

    :goto_3
    const-string v0, "compound payload not supported currently"

    invoke-static {v0, p5}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    iget-object p5, p0, Lˎʾ/ʽ;->ˈ:Lˊﾞ/ٴᵢ;

    invoke-interface {p5, v7, p1}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget-wide v1, p0, Lˎʾ/ʽ;->ﾞᴵ:J

    iget-wide v5, p0, Lˎʾ/ʽ;->ˑﹳ:J

    iget v0, p0, Lˎʾ/ʽ;->ʽ:I

    move-wide v3, p2

    invoke-static/range {v0 .. v6}, Lcom/bumptech/glide/ʽ;->ᴵᵔ(IJJJ)J

    move-result-wide v4

    iget-object v3, p0, Lˎʾ/ʽ;->ˈ:Lˊﾞ/ٴᵢ;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v9}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iput p4, p0, Lˎʾ/ʽ;->ᵎﹶ:I

    return-void
.end method
