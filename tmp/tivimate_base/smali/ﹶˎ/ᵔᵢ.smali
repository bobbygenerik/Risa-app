.class public final Lﹶˎ/ᵔᵢ;
.super Lᵢˋ/ﾞʻ;
.source "SourceFile"


# static fields
.field public static final ˑʼ:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public ʻˋ:Z

.field public ʻᵎ:Z

.field public final ʼˈ:Z

.field public final ʿ:Lˆʻ/ʼˎ;

.field public final ʿᵢ:Lᐧˎ/ﹳᐧ;

.field public final ˆﾞ:Landroid/net/Uri;

.field public final ˈʿ:I

.field public ˈˏ:Lʼʻ/ᵎⁱ;

.field public final ˈⁱ:Lﹶˎ/ʽ;

.field public final ˉـ:Lʽⁱ/ᵔʾ;

.field public final ˊˋ:Lﹶˎ/ⁱˊ;

.field public volatile ˊᵔ:Z

.field public final ˋᵔ:Lـˊ/ᵔᵢ;

.field public ˏᵢ:Lﹶˎ/ˉˆ;

.field public final ˑٴ:Lـˊ/ﾞᴵ;

.field public final ـˏ:Z

.field public ـﹶ:Z

.field public ᐧᴵ:Lﹶˎ/ⁱˊ;

.field public final ᐧﾞ:Z

.field public ᴵʼ:I

.field public final ᴵˑ:Ljava/util/List;

.field public final ᵎˊ:I

.field public final ᵎᵔ:Z

.field public final ᵔי:I

.field public final ᵔٴ:Z

.field public final ﹳـ:Lᐧˎ/ـˆ;

.field public ﹳﹳ:J

.field public ﹶᐧ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lﹶˎ/ᵔᵢ;->ˑʼ:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lﹶˎ/ʽ;Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;Lʽⁱ/ﹳᐧ;ZLـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZIZZLᐧˎ/ـˆ;Lʽⁱ/ᵔʾ;Lﹶˎ/ⁱˊ;Lˆʻ/ʼˎ;Lᐧˎ/ﹳᐧ;ZZLʻʿ/יـ;)V
    .locals 13

    .prologue
    move-object/from16 v0, p7

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p11

    move-object/from16 v6, p12

    move-wide/from16 v7, p13

    move-wide/from16 v9, p15

    move-wide/from16 v11, p17

    invoke-direct/range {v1 .. v12}, Lᵢˋ/ﾞʻ;-><init>(Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;Lʽⁱ/ﹳᐧ;ILjava/lang/Object;JJJ)V

    move/from16 p2, p5

    iput-boolean p2, p0, Lﹶˎ/ᵔᵢ;->ᵎᵔ:Z

    move/from16 p2, p19

    iput p2, p0, Lﹶˎ/ᵔᵢ;->ˈʿ:I

    if-eqz p20, :cond_0

    sub-long v2, p15, p13

    goto :goto_0

    :cond_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v2, p0, Lﹶˎ/ᵔᵢ;->ﹳﹳ:J

    move/from16 p2, p21

    iput p2, p0, Lﹶˎ/ᵔᵢ;->ᵔי:I

    iput-object v0, p0, Lﹶˎ/ᵔᵢ;->ˋᵔ:Lـˊ/ᵔᵢ;

    move-object/from16 p2, p6

    iput-object p2, p0, Lﹶˎ/ᵔᵢ;->ˑٴ:Lـˊ/ﾞᴵ;

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lﹶˎ/ᵔᵢ;->ʻᵎ:Z

    move/from16 p2, p8

    iput-boolean p2, p0, Lﹶˎ/ᵔᵢ;->ᐧﾞ:Z

    move-object/from16 p2, p9

    iput-object p2, p0, Lﹶˎ/ᵔᵢ;->ˆﾞ:Landroid/net/Uri;

    move/from16 p2, p23

    iput-boolean p2, p0, Lﹶˎ/ᵔᵢ;->ʼˈ:Z

    move-object/from16 p2, p24

    iput-object p2, p0, Lﹶˎ/ᵔᵢ;->ﹳـ:Lᐧˎ/ـˆ;

    move/from16 p2, p22

    iput-boolean p2, p0, Lﹶˎ/ᵔᵢ;->ـˏ:Z

    iput-object p1, p0, Lﹶˎ/ᵔᵢ;->ˈⁱ:Lﹶˎ/ʽ;

    move-object/from16 p1, p10

    iput-object p1, p0, Lﹶˎ/ᵔᵢ;->ᴵˑ:Ljava/util/List;

    move-object/from16 p1, p25

    iput-object p1, p0, Lﹶˎ/ᵔᵢ;->ˉـ:Lʽⁱ/ᵔʾ;

    move-object/from16 p1, p26

    iput-object p1, p0, Lﹶˎ/ᵔᵢ;->ˊˋ:Lﹶˎ/ⁱˊ;

    move-object/from16 p1, p27

    iput-object p1, p0, Lﹶˎ/ᵔᵢ;->ʿ:Lˆʻ/ʼˎ;

    move-object/from16 p1, p28

    iput-object p1, p0, Lﹶˎ/ᵔᵢ;->ʿᵢ:Lᐧˎ/ﹳᐧ;

    move/from16 p1, p29

    iput-boolean p1, p0, Lﹶˎ/ᵔᵢ;->ʻˋ:Z

    move/from16 p1, p30

    iput-boolean p1, p0, Lﹶˎ/ᵔᵢ;->ᵔٴ:Z

    sget-object p1, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object p1, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    iput-object p1, p0, Lﹶˎ/ᵔᵢ;->ˈˏ:Lʼʻ/ᵎⁱ;

    sget-object p1, Lﹶˎ/ᵔᵢ;->ˑʼ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    iput p1, p0, Lﹶˎ/ᵔᵢ;->ᵎˊ:I

    return-void
.end method

.method public static ˑﹳ(Ljava/lang/String;)[B
    .locals 4

    .prologue
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ˈⁱ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    new-array v0, v1, [B

    array-length v2, p0

    if-le v2, v1, :cond_1

    array-length v2, p0

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    array-length v3, p0

    sub-int/2addr v3, v2

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public final ʽ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lﹶˎ/ᵔᵢ;->ˏᵢ:Lﹶˎ/ˉˆ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lﹶˎ/ᵔᵢ;->ᐧᴵ:Lﹶˎ/ⁱˊ;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lﹶˎ/ᵔᵢ;->ˊˋ:Lﹶˎ/ⁱˊ;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lﹶˎ/ⁱˊ;->ﹳٴ:Lˊﾞ/ˉˆ;

    invoke-interface {v0}, Lˊﾞ/ˉˆ;->ˈ()Lˊﾞ/ˉˆ;

    move-result-object v0

    instance-of v2, v0, Lיי/ᴵᵔ;

    if-nez v2, :cond_0

    instance-of v0, v0, Lʻˆ/ˉʿ;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lﹶˎ/ᵔᵢ;->ˊˋ:Lﹶˎ/ⁱˊ;

    iput-object v0, p0, Lﹶˎ/ᵔᵢ;->ᐧᴵ:Lﹶˎ/ⁱˊ;

    iput-boolean v1, p0, Lﹶˎ/ᵔᵢ;->ʻᵎ:Z

    :cond_1
    iget-object v0, p0, Lﹶˎ/ᵔᵢ;->ˋᵔ:Lـˊ/ᵔᵢ;

    iget-object v2, p0, Lﹶˎ/ᵔᵢ;->ˑٴ:Lـˊ/ﾞᴵ;

    iget-boolean v3, p0, Lﹶˎ/ᵔᵢ;->ʻᵎ:Z

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, p0, Lﹶˎ/ᵔᵢ;->ᐧﾞ:Z

    invoke-virtual {p0, v2, v0, v3, v1}, Lﹶˎ/ᵔᵢ;->ˈ(Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;ZZ)V

    iput v1, p0, Lﹶˎ/ᵔᵢ;->ᴵʼ:I

    iput-boolean v1, p0, Lﹶˎ/ᵔᵢ;->ʻᵎ:Z

    :goto_0
    iget-boolean v0, p0, Lﹶˎ/ᵔᵢ;->ˊᵔ:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lﹶˎ/ᵔᵢ;->ـˏ:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lᵢˋ/ˑﹳ;->ᵎⁱ:Lـˊ/ʼᐧ;

    iget-object v2, p0, Lᵢˋ/ˑﹳ;->ᴵˊ:Lـˊ/ᵔᵢ;

    iget-boolean v3, p0, Lﹶˎ/ᵔᵢ;->ᵎᵔ:Z

    invoke-virtual {p0, v0, v2, v3, v1}, Lﹶˎ/ᵔᵢ;->ˈ(Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;ZZ)V

    :cond_3
    iget-boolean v0, p0, Lﹶˎ/ᵔᵢ;->ˊᵔ:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lﹶˎ/ᵔᵢ;->ـﹶ:Z

    :cond_4
    return-void
.end method

.method public final ʽﹳ()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lﹶˎ/ᵔᵢ;->ˊᵔ:Z

    return-void
.end method

.method public final ˈ(Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;ZZ)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget p3, p0, Lﹶˎ/ᵔᵢ;->ᴵʼ:I

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    move v1, p3

    move-object p3, p2

    goto :goto_1

    :cond_1
    iget p3, p0, Lﹶˎ/ᵔᵢ;->ᴵʼ:I

    int-to-long v1, p3

    invoke-virtual {p2, v1, v2}, Lـˊ/ᵔᵢ;->ʽ(J)Lـˊ/ᵔᵢ;

    move-result-object p3

    move v1, v0

    :goto_1
    :try_start_0
    invoke-virtual {p0, p1, p3, p4}, Lﹶˎ/ᵔᵢ;->ᵔᵢ(Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;Z)Lˊﾞ/ﾞʻ;

    move-result-object p3

    if-eqz v1, :cond_2

    iget p4, p0, Lﹶˎ/ᵔᵢ;->ᴵʼ:I

    invoke-virtual {p3, p4, v0}, Lˊﾞ/ﾞʻ;->ﹳᐧ(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_7

    :cond_2
    :goto_2
    :try_start_1
    iget-boolean p4, p0, Lﹶˎ/ᵔᵢ;->ˊᵔ:Z

    if-nez p4, :cond_3

    iget-object p4, p0, Lﹶˎ/ᵔᵢ;->ᐧᴵ:Lﹶˎ/ⁱˊ;

    iget-object p4, p4, Lﹶˎ/ⁱˊ;->ﹳٴ:Lˊﾞ/ˉˆ;

    sget-object v0, Lﹶˎ/ⁱˊ;->ﾞᴵ:Lʽⁱ/ˏי;

    invoke-interface {p4, p3, v0}, Lˊﾞ/ˉˆ;->ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I

    move-result p4
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p4, :cond_3

    goto :goto_2

    :catchall_1
    move-exception p4

    goto :goto_6

    :catch_0
    move-exception p4

    goto :goto_4

    :cond_3
    :try_start_2
    iget-wide p3, p3, Lˊﾞ/ﾞʻ;->ˈٴ:J

    :goto_3
    iget-wide v0, p2, Lـˊ/ᵔᵢ;->ˑﹳ:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    :try_start_3
    iget-object v0, p0, Lᵢˋ/ˑﹳ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget v0, v0, Lʽⁱ/ﹳᐧ;->ﾞᴵ:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_4

    iget-object p4, p0, Lﹶˎ/ᵔᵢ;->ᐧᴵ:Lﹶˎ/ⁱˊ;

    iget-object p4, p4, Lﹶˎ/ⁱˊ;->ﹳٴ:Lˊﾞ/ˉˆ;

    const-wide/16 v0, 0x0

    invoke-interface {p4, v0, v1, v0, v1}, Lˊﾞ/ˉˆ;->ⁱˊ(JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-wide p3, p3, Lˊﾞ/ﾞʻ;->ˈٴ:J

    goto :goto_3

    :goto_5
    sub-long/2addr p3, v0

    long-to-int p2, p3

    iput p2, p0, Lﹶˎ/ᵔᵢ;->ᴵʼ:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {p1}, Lˈˆ/ﾞᴵ;->ﾞᴵ(Lـˊ/ﾞᴵ;)V

    return-void

    :cond_4
    :try_start_5
    throw p4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_6
    :try_start_6
    iget-wide v0, p3, Lˊﾞ/ﾞʻ;->ˈٴ:J

    iget-wide p2, p2, Lـˊ/ᵔᵢ;->ˑﹳ:J

    sub-long/2addr v0, p2

    long-to-int p2, v0

    iput p2, p0, Lﹶˎ/ᵔᵢ;->ᴵʼ:I

    throw p4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_7
    invoke-static {p1}, Lˈˆ/ﾞᴵ;->ﾞᴵ(Lـˊ/ﾞᴵ;)V

    throw p2
.end method

.method public final ᵎﹶ()Z
    .locals 4

    .prologue
    iget-wide v0, p0, Lﹶˎ/ᵔᵢ;->ﹳﹳ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ᵔᵢ(Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;Z)Lˊﾞ/ﾞʻ;
    .locals 34

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-interface/range {p1 .. p2}, Lـˊ/ﾞᴵ;->ʽʽ(Lـˊ/ᵔᵢ;)J

    move-result-wide v6

    iget-wide v8, v1, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    iget-object v10, v1, Lﹶˎ/ᵔᵢ;->ﹳـ:Lᐧˎ/ـˆ;

    if-eqz p3, :cond_0

    :try_start_0
    iget-boolean v2, v1, Lﹶˎ/ᵔᵢ;->ʼˈ:Z

    invoke-virtual {v10, v2, v8, v9}, Lᐧˎ/ـˆ;->ᵔᵢ(ZJ)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_0
    :goto_0
    new-instance v2, Lˊﾞ/ﾞʻ;

    iget-wide v4, v0, Lـˊ/ᵔᵢ;->ˑﹳ:J

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lˊﾞ/ﾞʻ;-><init>(Lʽⁱ/ˆʾ;JJ)V

    iget-object v3, v1, Lﹶˎ/ᵔᵢ;->ᐧᴵ:Lﹶˎ/ⁱˊ;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_2f

    iget-object v3, v1, Lﹶˎ/ᵔᵢ;->ʿᵢ:Lᐧˎ/ﹳᐧ;

    iput v5, v2, Lˊﾞ/ﾞʻ;->ˊʻ:I

    const/16 v11, 0x8

    const/16 v12, 0xa

    :try_start_1
    invoke-virtual {v3, v12}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v13, v3, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-virtual {v2, v13, v5, v12, v5}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_2

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ᴵˊ()I

    move-result v13

    const v14, 0x494433

    if-eq v13, v14, :cond_1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3

    :cond_1
    const/4 v13, 0x3

    invoke-virtual {v3, v13}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʾᵎ()I

    move-result v13

    add-int/lit8 v14, v13, 0xa

    iget-object v15, v3, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    array-length v6, v15

    if-le v14, v6, :cond_2

    invoke-virtual {v3, v14}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v6, v3, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-static {v15, v5, v6, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v6, v3, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-virtual {v2, v6, v12, v13, v5}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z

    iget-object v6, v1, Lﹶˎ/ᵔᵢ;->ʿ:Lˆʻ/ʼˎ;

    iget-object v7, v3, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-virtual {v6, v13, v7}, Lˆʻ/ʼˎ;->ٴʼ(I[B)Lʽⁱ/ٴᵢ;

    move-result-object v6

    if-nez v6, :cond_4

    :cond_3
    :goto_1
    move-wide/from16 v6, v16

    goto :goto_3

    :cond_4
    iget-object v6, v6, Lʽⁱ/ٴᵢ;->ﹳٴ:[Lʽⁱ/ˊʻ;

    array-length v7, v6

    move v12, v5

    :goto_2
    if-ge v12, v7, :cond_3

    aget-object v13, v6, v12

    instance-of v14, v13, Lˆʻ/ᵔʾ;

    if-eqz v14, :cond_5

    check-cast v13, Lˆʻ/ᵔʾ;

    const-string v14, "com.apple.streaming.transportStreamTimestamp"

    iget-object v15, v13, Lˆʻ/ᵔʾ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    iget-object v6, v13, Lˆʻ/ᵔʾ;->ʽ:[B

    iget-object v7, v3, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-static {v6, v5, v7, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v3, v5}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v3, v11}, Lᐧˎ/ﹳᐧ;->ٴʼ(I)V

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->יـ()J

    move-result-wide v6

    const-wide v12, 0x1ffffffffL

    and-long/2addr v6, v12

    goto :goto_3

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :catch_2
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    :goto_3
    iput v5, v2, Lˊﾞ/ﾞʻ;->ˊʻ:I

    iget-object v3, v1, Lﹶˎ/ᵔᵢ;->ˊˋ:Lﹶˎ/ⁱˊ;

    if-eqz v3, :cond_e

    iget-object v0, v3, Lﹶˎ/ⁱˊ;->ﹳٴ:Lˊﾞ/ˉˆ;

    invoke-interface {v0}, Lˊﾞ/ˉˆ;->ˈ()Lˊﾞ/ˉˆ;

    move-result-object v11

    instance-of v14, v11, Lיי/ᴵᵔ;

    if-nez v14, :cond_7

    instance-of v11, v11, Lʻˆ/ˉʿ;

    if-eqz v11, :cond_6

    goto :goto_4

    :cond_6
    move v11, v5

    goto :goto_5

    :cond_7
    :goto_4
    move v11, v4

    :goto_5
    xor-int/2addr v11, v4

    invoke-static {v11}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    invoke-interface {v0}, Lˊﾞ/ˉˆ;->ˈ()Lˊﾞ/ˉˆ;

    move-result-object v11

    if-ne v11, v0, :cond_8

    move v11, v4

    goto :goto_6

    :cond_8
    move v11, v5

    :goto_6
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Can\'t recreate wrapped extractors. Outer type: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v11}, Lᐧˎ/ﹳٴ;->ˆʾ(Ljava/lang/String;Z)V

    instance-of v11, v0, Lﹶˎ/ﹳᐧ;

    if-eqz v11, :cond_9

    new-instance v0, Lﹶˎ/ﹳᐧ;

    iget-object v11, v3, Lﹶˎ/ⁱˊ;->ⁱˊ:Lʽⁱ/ﹳᐧ;

    iget-object v11, v11, Lʽⁱ/ﹳᐧ;->ˈ:Ljava/lang/String;

    iget-object v14, v3, Lﹶˎ/ⁱˊ;->ʽ:Lᐧˎ/ـˆ;

    iget-object v15, v3, Lﹶˎ/ⁱˊ;->ˈ:Lʽᐧ/ˆʾ;

    iget-boolean v12, v3, Lﹶˎ/ⁱˊ;->ˑﹳ:Z

    invoke-direct {v0, v11, v14, v15, v12}, Lﹶˎ/ﹳᐧ;-><init>(Ljava/lang/String;Lᐧˎ/ـˆ;Lʽᐧ/ˆʾ;Z)V

    :goto_7
    move-object/from16 v19, v0

    goto :goto_8

    :cond_9
    instance-of v11, v0, Lיי/ˈ;

    if-eqz v11, :cond_a

    new-instance v0, Lיי/ˈ;

    invoke-direct {v0, v5}, Lיי/ˈ;-><init>(I)V

    goto :goto_7

    :cond_a
    instance-of v11, v0, Lיי/ﹳٴ;

    if-eqz v11, :cond_b

    new-instance v0, Lיי/ﹳٴ;

    invoke-direct {v0}, Lיי/ﹳٴ;-><init>()V

    goto :goto_7

    :cond_b
    instance-of v11, v0, Lיי/ʽ;

    if-eqz v11, :cond_c

    new-instance v0, Lיי/ʽ;

    invoke-direct {v0}, Lיי/ʽ;-><init>()V

    goto :goto_7

    :cond_c
    instance-of v11, v0, Lˎʼ/ˈ;

    if-eqz v11, :cond_d

    new-instance v0, Lˎʼ/ˈ;

    invoke-direct {v0, v5}, Lˎʼ/ˈ;-><init>(I)V

    goto :goto_7

    :goto_8
    new-instance v18, Lﹶˎ/ⁱˊ;

    iget-object v0, v3, Lﹶˎ/ⁱˊ;->ⁱˊ:Lʽⁱ/ﹳᐧ;

    iget-object v11, v3, Lﹶˎ/ⁱˊ;->ʽ:Lᐧˎ/ـˆ;

    iget-object v12, v3, Lﹶˎ/ⁱˊ;->ˈ:Lʽᐧ/ˆʾ;

    iget-boolean v3, v3, Lﹶˎ/ⁱˊ;->ˑﹳ:Z

    move-object/from16 v20, v0

    move/from16 v23, v3

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    invoke-direct/range {v18 .. v23}, Lﹶˎ/ⁱˊ;-><init>(Lˊﾞ/ˉˆ;Lʽⁱ/ﹳᐧ;Lᐧˎ/ـˆ;Lʽᐧ/ˆʾ;Z)V

    move-wide/from16 v32, v8

    move v8, v5

    :goto_9
    move-object/from16 v0, v18

    goto/16 :goto_1b

    :cond_d
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Unexpected extractor type for recreation: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    iget-object v0, v0, Lـˊ/ᵔᵢ;->ﹳٴ:Landroid/net/Uri;

    invoke-interface/range {p1 .. p1}, Lـˊ/ﾞᴵ;->ٴﹶ()Ljava/util/Map;

    move-result-object v3

    iget-object v12, v1, Lﹶˎ/ᵔᵢ;->ˈⁱ:Lﹶˎ/ʽ;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v1, Lᵢˋ/ˑﹳ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget-object v14, v13, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-static {v14}, Landroid/support/v4/media/session/ⁱˊ;->ٴﹶ(Ljava/lang/String;)I

    move-result v14

    const-string v15, "Content-Type"

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_10

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_f

    goto :goto_a

    :cond_f
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_b

    :cond_10
    :goto_a
    const/4 v3, 0x0

    :goto_b
    invoke-static {v3}, Landroid/support/v4/media/session/ⁱˊ;->ٴﹶ(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0}, Landroid/support/v4/media/session/ⁱˊ;->ﾞʻ(Landroid/net/Uri;)I

    move-result v0

    new-instance v15, Ljava/util/ArrayList;

    const/4 v11, 0x7

    invoke-direct {v15, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v14, v15}, Lﹶˎ/ʽ;->ﹳٴ(ILjava/util/ArrayList;)V

    invoke-static {v3, v15}, Lﹶˎ/ʽ;->ﹳٴ(ILjava/util/ArrayList;)V

    invoke-static {v0, v15}, Lﹶˎ/ʽ;->ﹳٴ(ILjava/util/ArrayList;)V

    move v4, v5

    :goto_c
    if-ge v4, v11, :cond_11

    sget-object v18, Lﹶˎ/ʽ;->ˈ:[I

    aget v11, v18, v4

    invoke-static {v11, v15}, Lﹶˎ/ʽ;->ﹳٴ(ILjava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    const/4 v11, 0x7

    goto :goto_c

    :cond_11
    iput v5, v2, Lˊﾞ/ﾞʻ;->ˊʻ:I

    move v4, v5

    const/16 v19, 0x0

    :goto_d
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget-object v5, v1, Lﹶˎ/ᵔᵢ;->ﹳـ:Lᐧˎ/ـˆ;

    if-ge v4, v11, :cond_27

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v18, v4

    if-eqz v11, :cond_23

    const/4 v4, 0x1

    if-eq v11, v4, :cond_22

    const/4 v4, 0x2

    if-eq v11, v4, :cond_21

    const/4 v4, 0x7

    if-eq v11, v4, :cond_20

    iget-object v4, v1, Lﹶˎ/ᵔᵢ;->ᴵˑ:Ljava/util/List;

    sget-object v21, Lʽᐧ/ˆʾ;->ﾞʻ:Lـˎ/ˈ;

    move-object/from16 v22, v4

    const/16 v4, 0x8

    if-eq v11, v4, :cond_19

    const/16 v4, 0xb

    if-eq v11, v4, :cond_13

    const/16 v4, 0xd

    if-eq v11, v4, :cond_12

    move-object/from16 v29, v5

    move-wide/from16 v32, v8

    move-object/from16 v23, v15

    const/4 v4, 0x0

    goto/16 :goto_19

    :cond_12
    new-instance v4, Lﹶˎ/ﹳᐧ;

    move-wide/from16 v32, v8

    iget-object v8, v13, Lʽⁱ/ﹳᐧ;->ˈ:Ljava/lang/String;

    iget-object v9, v12, Lﹶˎ/ʽ;->ⁱˊ:Lˋⁱ/ﾞᴵ;

    move-object/from16 v23, v15

    iget-boolean v15, v12, Lﹶˎ/ʽ;->ʽ:Z

    invoke-direct {v4, v8, v5, v9, v15}, Lﹶˎ/ﹳᐧ;-><init>(Ljava/lang/String;Lᐧˎ/ـˆ;Lʽᐧ/ˆʾ;Z)V

    move-object/from16 v29, v5

    goto/16 :goto_19

    :cond_13
    move-wide/from16 v32, v8

    move-object/from16 v23, v15

    iget v4, v12, Lﹶˎ/ʽ;->ﹳٴ:I

    iget-object v8, v12, Lﹶˎ/ʽ;->ⁱˊ:Lˋⁱ/ﾞᴵ;

    iget-boolean v9, v12, Lﹶˎ/ʽ;->ʽ:Z

    or-int/lit8 v15, v4, 0x10

    if-eqz v22, :cond_14

    or-int/lit8 v15, v4, 0x30

    move-object/from16 v29, v5

    move-object/from16 v4, v22

    goto :goto_e

    :cond_14
    new-instance v4, Lʽⁱ/ᵔﹳ;

    invoke-direct {v4}, Lʽⁱ/ᵔﹳ;-><init>()V

    const-string v22, "application/cea-608"

    move-object/from16 v29, v5

    invoke-static/range {v22 .. v22}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    new-instance v5, Lʽⁱ/ﹳᐧ;

    invoke-direct {v5, v4}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :goto_e
    iget-object v5, v13, Lʽⁱ/ﹳᐧ;->ٴﹶ:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    move-object/from16 v25, v8

    if-nez v22, :cond_17

    const-string v8, "audio/mp4a-latm"

    invoke-static {v5, v8}, Lʽⁱ/ˉٴ;->ʽ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_15

    goto :goto_f

    :cond_15
    or-int/lit8 v15, v15, 0x2

    :goto_f
    const-string v8, "video/avc"

    invoke-static {v5, v8}, Lʽⁱ/ˉٴ;->ʽ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16

    goto :goto_10

    :cond_16
    or-int/lit8 v15, v15, 0x4

    :cond_17
    :goto_10
    if-nez v9, :cond_18

    move-object/from16 v28, v21

    goto :goto_11

    :cond_18
    move-object/from16 v28, v25

    :goto_11
    xor-int/lit8 v27, v9, 0x1

    new-instance v25, Lיי/ᴵᵔ;

    new-instance v5, Lיי/ﾞᴵ;

    invoke-direct {v5, v15, v4}, Lיי/ﾞᴵ;-><init>(ILjava/util/List;)V

    const v31, 0x1b8a0

    const/16 v26, 0x2

    move-object/from16 v30, v5

    invoke-direct/range {v25 .. v31}, Lיי/ᴵᵔ;-><init>(IILʽᐧ/ˆʾ;Lᐧˎ/ـˆ;Lיי/ﾞᴵ;I)V

    :goto_12
    move-object/from16 v4, v25

    goto/16 :goto_19

    :cond_19
    move-object/from16 v29, v5

    move-wide/from16 v32, v8

    move-object/from16 v23, v15

    iget-object v4, v12, Lﹶˎ/ʽ;->ⁱˊ:Lˋⁱ/ﾞᴵ;

    iget-boolean v5, v12, Lﹶˎ/ʽ;->ʽ:Z

    iget-object v8, v13, Lʽⁱ/ﹳᐧ;->ﾞʻ:Lʽⁱ/ٴᵢ;

    if-nez v8, :cond_1b

    move-object/from16 v25, v4

    :cond_1a
    const/4 v4, 0x0

    goto :goto_14

    :cond_1b
    const/4 v9, 0x0

    :goto_13
    iget-object v15, v8, Lʽⁱ/ٴᵢ;->ﹳٴ:[Lʽⁱ/ˊʻ;

    move-object/from16 v25, v4

    array-length v4, v15

    if-ge v9, v4, :cond_1a

    aget-object v4, v15, v9

    instance-of v15, v4, Lﹶˎ/ᵔﹳ;

    if-eqz v15, :cond_1c

    check-cast v4, Lﹶˎ/ᵔﹳ;

    iget-object v4, v4, Lﹶˎ/ᵔﹳ;->ʽ:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/16 v24, 0x1

    xor-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_1c
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v25

    goto :goto_13

    :goto_14
    if-eqz v4, :cond_1d

    const/4 v4, 0x4

    goto :goto_15

    :cond_1d
    const/4 v4, 0x0

    :goto_15
    if-nez v5, :cond_1e

    or-int/lit8 v4, v4, 0x20

    move-object/from16 v26, v21

    :goto_16
    move/from16 v27, v4

    goto :goto_17

    :cond_1e
    move-object/from16 v26, v25

    goto :goto_16

    :goto_17
    new-instance v25, Lʻˆ/ˉʿ;

    if-eqz v22, :cond_1f

    move-object/from16 v30, v22

    goto :goto_18

    :cond_1f
    sget-object v4, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    move-object/from16 v30, v4

    :goto_18
    const/16 v31, 0x0

    move-object/from16 v21, v29

    const/16 v29, 0x0

    move-object/from16 v28, v21

    invoke-direct/range {v25 .. v31}, Lʻˆ/ˉʿ;-><init>(Lʽᐧ/ˆʾ;ILᐧˎ/ـˆ;Lʻˆ/ˏי;Ljava/util/List;Lـᵢ/ᵔʾ;)V

    move-object/from16 v29, v28

    goto :goto_12

    :cond_20
    move-object/from16 v29, v5

    move-wide/from16 v32, v8

    move-object/from16 v23, v15

    new-instance v4, Lˎʼ/ˈ;

    const-wide/16 v8, 0x0

    invoke-direct {v4, v8, v9}, Lˎʼ/ˈ;-><init>(J)V

    goto :goto_19

    :cond_21
    move-object/from16 v29, v5

    move-wide/from16 v32, v8

    move-object/from16 v23, v15

    new-instance v4, Lיי/ˈ;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lיי/ˈ;-><init>(I)V

    goto :goto_19

    :cond_22
    move-object/from16 v29, v5

    move-wide/from16 v32, v8

    move-object/from16 v23, v15

    new-instance v4, Lיי/ʽ;

    invoke-direct {v4}, Lיי/ʽ;-><init>()V

    goto :goto_19

    :cond_23
    move-object/from16 v29, v5

    move-wide/from16 v32, v8

    move-object/from16 v23, v15

    new-instance v4, Lיי/ﹳٴ;

    invoke-direct {v4}, Lיי/ﹳٴ;-><init>()V

    :goto_19
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    invoke-interface {v4, v2}, Lˊﾞ/ˉˆ;->ﾞᴵ(Lˊﾞ/ʼᐧ;)Z

    move-result v5
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v8, 0x0

    iput v8, v2, Lˊﾞ/ﾞʻ;->ˊʻ:I

    goto :goto_1a

    :catchall_0
    move-exception v0

    const/4 v8, 0x0

    iput v8, v2, Lˊﾞ/ﾞʻ;->ˊʻ:I

    throw v0

    :catch_3
    const/4 v8, 0x0

    iput v8, v2, Lˊﾞ/ﾞʻ;->ˊʻ:I

    move v5, v8

    :goto_1a
    if-eqz v5, :cond_24

    new-instance v18, Lﹶˎ/ⁱˊ;

    iget-object v0, v12, Lﹶˎ/ʽ;->ⁱˊ:Lˋⁱ/ﾞᴵ;

    iget-boolean v3, v12, Lﹶˎ/ʽ;->ʽ:Z

    move-object/from16 v22, v0

    move/from16 v23, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v13

    move-object/from16 v21, v29

    invoke-direct/range {v18 .. v23}, Lﹶˎ/ⁱˊ;-><init>(Lˊﾞ/ˉˆ;Lʽⁱ/ﹳᐧ;Lᐧˎ/ـˆ;Lʽᐧ/ˆʾ;Z)V

    goto/16 :goto_9

    :cond_24
    move-object/from16 v20, v13

    const/16 v5, 0xb

    if-nez v19, :cond_26

    if-eq v11, v14, :cond_25

    if-eq v11, v3, :cond_25

    if-eq v11, v0, :cond_25

    if-ne v11, v5, :cond_26

    :cond_25
    move-object/from16 v19, v4

    :cond_26
    add-int/lit8 v4, v18, 0x1

    move v5, v8

    move-object/from16 v13, v20

    move-object/from16 v15, v23

    move-wide/from16 v8, v32

    goto/16 :goto_d

    :cond_27
    move-object/from16 v29, v5

    move-wide/from16 v32, v8

    move-object/from16 v20, v13

    const/4 v8, 0x0

    new-instance v18, Lﹶˎ/ⁱˊ;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v12, Lﹶˎ/ʽ;->ⁱˊ:Lˋⁱ/ﾞᴵ;

    iget-boolean v3, v12, Lﹶˎ/ʽ;->ʽ:Z

    move-object/from16 v22, v0

    move/from16 v23, v3

    move-object/from16 v21, v29

    invoke-direct/range {v18 .. v23}, Lﹶˎ/ⁱˊ;-><init>(Lˊﾞ/ˉˆ;Lʽⁱ/ﹳᐧ;Lᐧˎ/ـˆ;Lʽᐧ/ˆʾ;Z)V

    goto/16 :goto_9

    :goto_1b
    iput-object v0, v1, Lﹶˎ/ᵔᵢ;->ᐧᴵ:Lﹶˎ/ⁱˊ;

    iget-object v0, v0, Lﹶˎ/ⁱˊ;->ﹳٴ:Lˊﾞ/ˉˆ;

    invoke-interface {v0}, Lˊﾞ/ˉˆ;->ˈ()Lˊﾞ/ˉˆ;

    move-result-object v0

    instance-of v3, v0, Lיי/ˈ;

    if-nez v3, :cond_29

    instance-of v3, v0, Lיי/ﹳٴ;

    if-nez v3, :cond_29

    instance-of v3, v0, Lיי/ʽ;

    if-nez v3, :cond_29

    instance-of v0, v0, Lˎʼ/ˈ;

    if-eqz v0, :cond_28

    goto :goto_1c

    :cond_28
    move v0, v8

    goto :goto_1d

    :cond_29
    :goto_1c
    const/4 v0, 0x1

    :goto_1d
    if-eqz v0, :cond_2c

    iget-object v0, v1, Lﹶˎ/ᵔᵢ;->ˏᵢ:Lﹶˎ/ˉˆ;

    cmp-long v3, v6, v16

    if-eqz v3, :cond_2a

    invoke-virtual {v10, v6, v7}, Lᐧˎ/ـˆ;->ⁱˊ(J)J

    move-result-wide v3

    goto :goto_1e

    :cond_2a
    move-wide/from16 v3, v32

    :goto_1e
    iget-wide v5, v0, Lﹶˎ/ˉˆ;->ʼـ:J

    cmp-long v5, v5, v3

    if-eqz v5, :cond_2e

    iput-wide v3, v0, Lﹶˎ/ˉˆ;->ʼـ:J

    iget-object v0, v0, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    array-length v5, v0

    move v6, v8

    :goto_1f
    if-ge v6, v5, :cond_2e

    aget-object v7, v0, v6

    iget-wide v9, v7, Lﹳᵢ/ᴵˑ;->ˊʻ:J

    cmp-long v9, v9, v3

    if-eqz v9, :cond_2b

    iput-wide v3, v7, Lﹳᵢ/ᴵˑ;->ˊʻ:J

    const/4 v9, 0x1

    iput-boolean v9, v7, Lﹳᵢ/ᴵˑ;->ᵢˏ:Z

    :cond_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_2c
    iget-object v0, v1, Lﹶˎ/ᵔᵢ;->ˏᵢ:Lﹶˎ/ˉˆ;

    iget-wide v3, v0, Lﹶˎ/ˉˆ;->ʼـ:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2e

    iput-wide v5, v0, Lﹶˎ/ˉˆ;->ʼـ:J

    iget-object v0, v0, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    array-length v3, v0

    move v4, v8

    :goto_20
    if-ge v4, v3, :cond_2e

    aget-object v7, v0, v4

    iget-wide v9, v7, Lﹳᵢ/ᴵˑ;->ˊʻ:J

    cmp-long v9, v9, v5

    if-eqz v9, :cond_2d

    iput-wide v5, v7, Lﹳᵢ/ᴵˑ;->ˊʻ:J

    const/4 v9, 0x1

    iput-boolean v9, v7, Lﹳᵢ/ᴵˑ;->ᵢˏ:Z

    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_2e
    iget-object v0, v1, Lﹶˎ/ᵔᵢ;->ˏᵢ:Lﹶˎ/ˉˆ;

    iget-object v0, v0, Lﹶˎ/ˉˆ;->ˉـ:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, v1, Lﹶˎ/ᵔᵢ;->ᐧᴵ:Lﹶˎ/ⁱˊ;

    iget-object v3, v1, Lﹶˎ/ᵔᵢ;->ˏᵢ:Lﹶˎ/ˉˆ;

    iget-object v0, v0, Lﹶˎ/ⁱˊ;->ﹳٴ:Lˊﾞ/ˉˆ;

    invoke-interface {v0, v3}, Lˊﾞ/ˉˆ;->ʼˎ(Lˊﾞ/ᵔﹳ;)V

    goto :goto_21

    :cond_2f
    move v8, v5

    :goto_21
    iget-object v0, v1, Lﹶˎ/ᵔᵢ;->ˏᵢ:Lﹶˎ/ˉˆ;

    iget-object v3, v0, Lﹶˎ/ˉˆ;->ˎᐧ:Lʽⁱ/ᵔʾ;

    iget-object v4, v1, Lﹶˎ/ᵔᵢ;->ˉـ:Lʽⁱ/ᵔʾ;

    invoke-static {v3, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    iput-object v4, v0, Lﹶˎ/ˉˆ;->ˎᐧ:Lʽⁱ/ᵔʾ;

    move v5, v8

    :goto_22
    iget-object v3, v0, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    array-length v6, v3

    if-ge v5, v6, :cond_31

    iget-object v6, v0, Lﹶˎ/ˉˆ;->ᵎʻ:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_30

    aget-object v3, v3, v5

    iput-object v4, v3, Lﹶˎ/ᵔʾ;->ᵎⁱ:Lʽⁱ/ᵔʾ;

    const/4 v9, 0x1

    iput-boolean v9, v3, Lﹳᵢ/ᴵˑ;->ᵢˏ:Z

    goto :goto_23

    :cond_30
    const/4 v9, 0x1

    :goto_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_31
    return-object v2
.end method

.method public final ⁱˊ()Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final ﾞᴵ(I)I
    .locals 1

    .prologue
    iget-boolean v0, p0, Lﹶˎ/ᵔᵢ;->ʻˋ:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-object v0, p0, Lﹶˎ/ᵔᵢ;->ˈˏ:Lʼʻ/ᵎⁱ;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lﹶˎ/ᵔᵢ;->ˈˏ:Lʼʻ/ᵎⁱ;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
