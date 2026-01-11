.class public final Lיי/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lיי/ʼˎ;


# static fields
.field public static final ʾᵎ:[B


# instance fields
.field public ʻٴ:Lˊﾞ/ٴᵢ;

.field public ʼˎ:Lˊﾞ/ٴᵢ;

.field public ʼᐧ:I

.field public final ʽ:Lᐧˎ/ﹳᐧ;

.field public ʽﹳ:J

.field public ˆʾ:I

.field public final ˈ:Ljava/lang/String;

.field public ˉʿ:Z

.field public ˉˆ:I

.field public ˏי:I

.field public final ˑﹳ:I

.field public יـ:J

.field public ـˆ:J

.field public ٴﹶ:I

.field public ᵎﹶ:Ljava/lang/String;

.field public ᵔʾ:Z

.field public ᵔᵢ:Lˊﾞ/ٴᵢ;

.field public ᵔﹳ:I

.field public final ⁱˊ:Lʻᴵ/ʻٴ;

.field public final ﹳٴ:Z

.field public ﹳᐧ:Z

.field public ﾞʻ:I

.field public final ﾞᴵ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lיי/ˑﹳ;->ʾᵎ:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lʻᴵ/ʻٴ;

    const/4 v1, 0x7

    new-array v2, v1, [B

    invoke-direct {v0, v1, v2}, Lʻᴵ/ʻٴ;-><init>(I[B)V

    iput-object v0, p0, Lיי/ˑﹳ;->ⁱˊ:Lʻᴵ/ʻٴ;

    new-instance v0, Lᐧˎ/ﹳᐧ;

    sget-object v1, Lיי/ˑﹳ;->ʾᵎ:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lᐧˎ/ﹳᐧ;-><init>([B)V

    iput-object v0, p0, Lיי/ˑﹳ;->ʽ:Lᐧˎ/ﹳᐧ;

    const/4 v0, -0x1

    iput v0, p0, Lיי/ˑﹳ;->ˉˆ:I

    iput v0, p0, Lיי/ˑﹳ;->ʼᐧ:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lיי/ˑﹳ;->יـ:J

    iput-wide v0, p0, Lיי/ˑﹳ;->ʽﹳ:J

    iput-boolean p4, p0, Lיי/ˑﹳ;->ﹳٴ:Z

    iput-object p2, p0, Lיי/ˑﹳ;->ˈ:Ljava/lang/String;

    iput p1, p0, Lיי/ˑﹳ;->ˑﹳ:I

    iput-object p3, p0, Lיי/ˑﹳ;->ﾞᴵ:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lיי/ˑﹳ;->ˆʾ:I

    iput p1, p0, Lיי/ˑﹳ;->ٴﹶ:I

    const/16 p1, 0x100

    iput p1, p0, Lיי/ˑﹳ;->ﾞʻ:I

    return-void
.end method


# virtual methods
.method public final ʽ(Lᐧˎ/ﹳᐧ;)V
    .locals 23

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lיי/ˑﹳ;->ᵔᵢ:Lˊﾞ/ٴᵢ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v2

    if-lez v2, :cond_27

    iget v2, v0, Lיי/ˑﹳ;->ˆʾ:I

    const/16 v3, 0x100

    const/4 v4, -0x1

    const/16 v5, 0xd

    iget-object v6, v0, Lיי/ˑﹳ;->ʽ:Lᐧˎ/ﹳᐧ;

    const/4 v8, 0x3

    iget-object v9, v0, Lיי/ˑﹳ;->ⁱˊ:Lʻᴵ/ʻٴ;

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v2, :cond_d

    if-eq v2, v13, :cond_9

    const/16 v4, 0xa

    if-eq v2, v12, :cond_8

    if-eq v2, v8, :cond_3

    if-ne v2, v11, :cond_2

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v2

    iget v4, v0, Lיי/ˑﹳ;->ˏי:I

    iget v5, v0, Lיי/ˑﹳ;->ٴﹶ:I

    sub-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v4, v0, Lיי/ˑﹳ;->ʻٴ:Lˊﾞ/ٴᵢ;

    invoke-interface {v4, v2, v1}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget v4, v0, Lיי/ˑﹳ;->ٴﹶ:I

    add-int/2addr v4, v2

    iput v4, v0, Lיי/ˑﹳ;->ٴﹶ:I

    iget v2, v0, Lיי/ˑﹳ;->ˏי:I

    if-ne v4, v2, :cond_0

    iget-wide v4, v0, Lיי/ˑﹳ;->ʽﹳ:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v13, v10

    :goto_1
    invoke-static {v13}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-object v14, v0, Lיי/ˑﹳ;->ʻٴ:Lˊﾞ/ٴᵢ;

    iget-wide v4, v0, Lיי/ˑﹳ;->ʽﹳ:J

    iget v2, v0, Lיי/ˑﹳ;->ˏי:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x1

    move/from16 v18, v2

    move-wide v15, v4

    invoke-interface/range {v14 .. v20}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iget-wide v4, v0, Lיי/ˑﹳ;->ʽﹳ:J

    iget-wide v6, v0, Lיי/ˑﹳ;->ـˆ:J

    add-long/2addr v4, v6

    iput-wide v4, v0, Lיי/ˑﹳ;->ʽﹳ:J

    iput v10, v0, Lיי/ˑﹳ;->ˆʾ:I

    iput v10, v0, Lיי/ˑﹳ;->ٴﹶ:I

    iput v3, v0, Lיי/ˑﹳ;->ﾞʻ:I

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_3
    iget-boolean v2, v0, Lיי/ˑﹳ;->ˉʿ:Z

    const/4 v3, 0x5

    if-eqz v2, :cond_4

    const/4 v7, 0x7

    goto :goto_2

    :cond_4
    move v7, v3

    :goto_2
    iget-object v2, v9, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v6

    iget v14, v0, Lיי/ˑﹳ;->ٴﹶ:I

    sub-int v14, v7, v14

    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v14, v0, Lיי/ˑﹳ;->ٴﹶ:I

    invoke-virtual {v1, v2, v14, v6}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    iget v2, v0, Lיי/ˑﹳ;->ٴﹶ:I

    add-int/2addr v2, v6

    iput v2, v0, Lיי/ˑﹳ;->ٴﹶ:I

    if-ne v2, v7, :cond_0

    invoke-virtual {v9, v10}, Lʻᴵ/ʻٴ;->ʽﹳ(I)V

    iget-boolean v2, v0, Lיי/ˑﹳ;->ﹳᐧ:Z

    if-nez v2, :cond_6

    invoke-virtual {v9, v12}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v2

    add-int/2addr v2, v13

    if-eq v2, v12, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Detected audio object type: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but assuming AAC LC."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AdtsReader"

    invoke-static {v4, v2}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v12

    :cond_5
    invoke-virtual {v9, v3}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    invoke-virtual {v9, v8}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v3

    iget v4, v0, Lיי/ˑﹳ;->ʼᐧ:I

    invoke-static {v2, v4, v3}, Lˊﾞ/ﹳٴ;->ⁱˊ(III)[B

    move-result-object v2

    new-instance v3, Lʻᴵ/ʻٴ;

    invoke-direct {v3, v12, v2}, Lʻᴵ/ʻٴ;-><init>(I[B)V

    invoke-static {v3, v10}, Lˊﾞ/ﹳٴ;->ᵔﹳ(Lʻᴵ/ʻٴ;Z)Lʼٴ/ˑﹳ;

    move-result-object v3

    new-instance v4, Lʽⁱ/ᵔﹳ;

    invoke-direct {v4}, Lʽⁱ/ᵔﹳ;-><init>()V

    iget-object v6, v0, Lיי/ˑﹳ;->ᵎﹶ:Ljava/lang/String;

    iput-object v6, v4, Lʽⁱ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    iget-object v6, v0, Lיי/ˑﹳ;->ﾞᴵ:Ljava/lang/String;

    invoke-static {v6}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    const-string v6, "audio/mp4a-latm"

    invoke-static {v6}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iget-object v6, v3, Lʼٴ/ˑﹳ;->ʽ:Ljava/lang/String;

    iput-object v6, v4, Lʽⁱ/ᵔﹳ;->ˆʾ:Ljava/lang/String;

    iget v6, v3, Lʼٴ/ˑﹳ;->ⁱˊ:I

    iput v6, v4, Lʽⁱ/ᵔﹳ;->ᴵᵔ:I

    iget v3, v3, Lʼٴ/ˑﹳ;->ﹳٴ:I

    iput v3, v4, Lʽⁱ/ᵔﹳ;->ˊʻ:I

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v4, Lʽⁱ/ᵔﹳ;->ʼᐧ:Ljava/util/List;

    iget-object v2, v0, Lיי/ˑﹳ;->ˈ:Ljava/lang/String;

    iput-object v2, v4, Lʽⁱ/ᵔﹳ;->ˈ:Ljava/lang/String;

    iget v2, v0, Lיי/ˑﹳ;->ˑﹳ:I

    iput v2, v4, Lʽⁱ/ᵔﹳ;->ﾞᴵ:I

    new-instance v2, Lʽⁱ/ﹳᐧ;

    invoke-direct {v2, v4}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    iget v3, v2, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    int-to-long v3, v3

    const-wide/32 v6, 0x3d090000

    div-long/2addr v6, v3

    iput-wide v6, v0, Lיי/ˑﹳ;->יـ:J

    iget-object v3, v0, Lיי/ˑﹳ;->ᵔᵢ:Lˊﾞ/ٴᵢ;

    invoke-interface {v3, v2}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    iput-boolean v13, v0, Lיי/ˑﹳ;->ﹳᐧ:Z

    goto :goto_3

    :cond_6
    invoke-virtual {v9, v4}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    :goto_3
    invoke-virtual {v9, v11}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    invoke-virtual {v9, v5}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v2

    add-int/lit8 v3, v2, -0x7

    iget-boolean v4, v0, Lיי/ˑﹳ;->ˉʿ:Z

    if-eqz v4, :cond_7

    add-int/lit8 v3, v2, -0x9

    :cond_7
    iget-object v2, v0, Lיי/ˑﹳ;->ᵔᵢ:Lˊﾞ/ٴᵢ;

    iget-wide v4, v0, Lיי/ˑﹳ;->יـ:J

    iput v11, v0, Lיי/ˑﹳ;->ˆʾ:I

    iput v10, v0, Lיי/ˑﹳ;->ٴﹶ:I

    iput-object v2, v0, Lיי/ˑﹳ;->ʻٴ:Lˊﾞ/ٴᵢ;

    iput-wide v4, v0, Lיי/ˑﹳ;->ـˆ:J

    iput v3, v0, Lיי/ˑﹳ;->ˏי:I

    goto/16 :goto_0

    :cond_8
    iget-object v2, v6, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v3

    iget v5, v0, Lיי/ˑﹳ;->ٴﹶ:I

    rsub-int/lit8 v5, v5, 0xa

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v5, v0, Lיי/ˑﹳ;->ٴﹶ:I

    invoke-virtual {v1, v2, v5, v3}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    iget v2, v0, Lיי/ˑﹳ;->ٴﹶ:I

    add-int/2addr v2, v3

    iput v2, v0, Lיי/ˑﹳ;->ٴﹶ:I

    if-ne v2, v4, :cond_0

    iget-object v2, v0, Lיי/ˑﹳ;->ʼˎ:Lˊﾞ/ٴᵢ;

    invoke-interface {v2, v4, v6}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    const/4 v2, 0x6

    invoke-virtual {v6, v2}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    iget-object v2, v0, Lיי/ˑﹳ;->ʼˎ:Lˊﾞ/ٴᵢ;

    invoke-virtual {v6}, Lᐧˎ/ﹳᐧ;->ʾᵎ()I

    move-result v3

    add-int/2addr v3, v4

    iput v11, v0, Lיי/ˑﹳ;->ˆʾ:I

    iput v4, v0, Lיי/ˑﹳ;->ٴﹶ:I

    iput-object v2, v0, Lיי/ˑﹳ;->ʻٴ:Lˊﾞ/ٴᵢ;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lיי/ˑﹳ;->ـˆ:J

    iput v3, v0, Lיי/ˑﹳ;->ˏי:I

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    :cond_a
    iget-object v2, v9, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    iget-object v5, v1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v6, v1, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    aget-byte v5, v5, v6

    aput-byte v5, v2, v10

    invoke-virtual {v9, v12}, Lʻᴵ/ʻٴ;->ʽﹳ(I)V

    invoke-virtual {v9, v11}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v2

    iget v5, v0, Lיי/ˑﹳ;->ʼᐧ:I

    if-eq v5, v4, :cond_b

    if-eq v2, v5, :cond_b

    iput-boolean v10, v0, Lיי/ˑﹳ;->ᵔʾ:Z

    iput v10, v0, Lיי/ˑﹳ;->ˆʾ:I

    iput v10, v0, Lיי/ˑﹳ;->ٴﹶ:I

    iput v3, v0, Lיי/ˑﹳ;->ﾞʻ:I

    goto/16 :goto_0

    :cond_b
    iget-boolean v3, v0, Lיי/ˑﹳ;->ᵔʾ:Z

    if-nez v3, :cond_c

    iput-boolean v13, v0, Lיי/ˑﹳ;->ᵔʾ:Z

    iget v3, v0, Lיי/ˑﹳ;->ᵔﹳ:I

    iput v3, v0, Lיי/ˑﹳ;->ˉˆ:I

    iput v2, v0, Lיי/ˑﹳ;->ʼᐧ:I

    :cond_c
    iput v8, v0, Lיי/ˑﹳ;->ˆʾ:I

    iput v10, v0, Lיי/ˑﹳ;->ٴﹶ:I

    goto/16 :goto_0

    :cond_d
    iget-object v2, v1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v14, v1, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    iget v15, v1, Lᐧˎ/ﹳᐧ;->ʽ:I

    :goto_4
    if-ge v14, v15, :cond_26

    add-int/lit8 v3, v14, 0x1

    move/from16 v17, v8

    aget-byte v8, v2, v14

    and-int/lit16 v7, v8, 0xff

    iget v5, v0, Lיי/ˑﹳ;->ﾞʻ:I

    const/16 v12, 0x200

    if-ne v5, v12, :cond_20

    int-to-byte v5, v7

    and-int/lit16 v5, v5, 0xff

    const v21, 0xff00

    or-int v5, v21, v5

    const v22, 0xfff6

    and-int v5, v5, v22

    const v12, 0xfff0

    if-ne v5, v12, :cond_20

    iget-boolean v5, v0, Lיי/ˑﹳ;->ᵔʾ:Z

    if-nez v5, :cond_1d

    add-int/lit8 v5, v14, -0x1

    invoke-virtual {v1, v14}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    iget-object v12, v9, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v4

    if-ge v4, v13, :cond_e

    :goto_5
    const/4 v10, -0x1

    goto/16 :goto_7

    :cond_e
    invoke-virtual {v1, v12, v10, v13}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    invoke-virtual {v9, v11}, Lʻᴵ/ʻٴ;->ʽﹳ(I)V

    invoke-virtual {v9, v13}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v4

    iget v12, v0, Lיי/ˑﹳ;->ˉˆ:I

    const/4 v11, -0x1

    if-eq v12, v11, :cond_f

    if-eq v4, v12, :cond_f

    move v10, v11

    goto/16 :goto_7

    :cond_f
    iget v12, v0, Lיי/ˑﹳ;->ʼᐧ:I

    if-eq v12, v11, :cond_12

    iget-object v11, v9, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v12

    if-ge v12, v13, :cond_10

    goto/16 :goto_8

    :cond_10
    invoke-virtual {v1, v11, v10, v13}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Lʻᴵ/ʻٴ;->ʽﹳ(I)V

    const/4 v11, 0x4

    invoke-virtual {v9, v11}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v12

    iget v13, v0, Lיי/ˑﹳ;->ʼᐧ:I

    if-eq v12, v13, :cond_11

    goto :goto_5

    :cond_11
    invoke-virtual {v1, v3}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    goto :goto_6

    :cond_12
    const/4 v11, 0x4

    :goto_6
    iget-object v12, v9, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v13

    if-ge v13, v11, :cond_13

    goto :goto_8

    :cond_13
    invoke-virtual {v1, v12, v10, v11}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    const/16 v12, 0xe

    invoke-virtual {v9, v12}, Lʻᴵ/ʻٴ;->ʽﹳ(I)V

    const/16 v12, 0xd

    invoke-virtual {v9, v12}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v13

    const/4 v11, 0x7

    if-ge v13, v11, :cond_14

    goto :goto_5

    :cond_14
    iget-object v11, v1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v12, v1, Lᐧˎ/ﹳᐧ;->ʽ:I

    add-int/2addr v5, v13

    if-lt v5, v12, :cond_15

    goto :goto_8

    :cond_15
    aget-byte v13, v11, v5

    const/4 v10, -0x1

    if-ne v13, v10, :cond_17

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v12, :cond_16

    goto :goto_8

    :cond_16
    aget-byte v5, v11, v5

    and-int/lit16 v11, v5, 0xff

    or-int v11, v21, v11

    and-int v11, v11, v22

    const v12, 0xfff0

    if-ne v11, v12, :cond_1c

    and-int/lit8 v5, v5, 0x8

    shr-int/lit8 v5, v5, 0x3

    if-ne v5, v4, :cond_1c

    goto :goto_8

    :cond_17
    const/16 v4, 0x49

    if-eq v13, v4, :cond_18

    goto :goto_7

    :cond_18
    add-int/lit8 v4, v5, 0x1

    if-ne v4, v12, :cond_19

    goto :goto_8

    :cond_19
    aget-byte v4, v11, v4

    const/16 v13, 0x44

    if-eq v4, v13, :cond_1a

    goto :goto_7

    :cond_1a
    add-int/lit8 v5, v5, 0x2

    if-ne v5, v12, :cond_1b

    goto :goto_8

    :cond_1b
    aget-byte v4, v11, v5

    const/16 v5, 0x33

    if-ne v4, v5, :cond_1c

    goto :goto_8

    :cond_1c
    :goto_7
    const/4 v4, 0x1

    goto :goto_b

    :cond_1d
    :goto_8
    and-int/lit8 v2, v8, 0x8

    shr-int/lit8 v2, v2, 0x3

    iput v2, v0, Lיי/ˑﹳ;->ᵔﹳ:I

    and-int/lit8 v2, v8, 0x1

    if-nez v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_9

    :cond_1e
    const/4 v2, 0x0

    :goto_9
    iput-boolean v2, v0, Lיי/ˑﹳ;->ˉʿ:Z

    iget-boolean v2, v0, Lיי/ˑﹳ;->ᵔʾ:Z

    if-nez v2, :cond_1f

    const/4 v4, 0x1

    iput v4, v0, Lיי/ˑﹳ;->ˆʾ:I

    const/4 v2, 0x0

    iput v2, v0, Lיי/ˑﹳ;->ٴﹶ:I

    goto :goto_a

    :cond_1f
    move/from16 v4, v17

    const/4 v2, 0x0

    iput v4, v0, Lיי/ˑﹳ;->ˆʾ:I

    iput v2, v0, Lיי/ˑﹳ;->ٴﹶ:I

    :goto_a
    invoke-virtual {v1, v3}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    goto/16 :goto_0

    :cond_20
    move v10, v4

    move v4, v13

    :goto_b
    iget v5, v0, Lיי/ˑﹳ;->ﾞʻ:I

    or-int/2addr v7, v5

    const/16 v8, 0x149

    if-eq v7, v8, :cond_25

    const/16 v8, 0x1ff

    if-eq v7, v8, :cond_24

    const/16 v8, 0x344

    if-eq v7, v8, :cond_23

    const/16 v8, 0x433

    if-eq v7, v8, :cond_22

    const/16 v7, 0x100

    if-eq v5, v7, :cond_21

    iput v7, v0, Lיי/ˑﹳ;->ﾞʻ:I

    const/4 v5, 0x3

    const/4 v8, 0x0

    const/4 v11, 0x2

    goto :goto_d

    :cond_21
    const/4 v5, 0x3

    const/4 v8, 0x0

    const/4 v11, 0x2

    goto :goto_c

    :cond_22
    const/4 v11, 0x2

    iput v11, v0, Lיי/ˑﹳ;->ˆʾ:I

    const/4 v5, 0x3

    iput v5, v0, Lיי/ˑﹳ;->ٴﹶ:I

    const/4 v8, 0x0

    iput v8, v0, Lיי/ˑﹳ;->ˏי:I

    invoke-virtual {v6, v8}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v1, v3}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    goto/16 :goto_0

    :cond_23
    const/4 v5, 0x3

    const/16 v7, 0x100

    const/4 v8, 0x0

    const/4 v11, 0x2

    const/16 v12, 0x400

    iput v12, v0, Lיי/ˑﹳ;->ﾞʻ:I

    goto :goto_c

    :cond_24
    const/4 v5, 0x3

    const/16 v7, 0x100

    const/4 v8, 0x0

    const/4 v11, 0x2

    const/16 v12, 0x200

    iput v12, v0, Lיי/ˑﹳ;->ﾞʻ:I

    goto :goto_c

    :cond_25
    const/4 v5, 0x3

    const/16 v7, 0x100

    const/4 v8, 0x0

    const/4 v11, 0x2

    const/16 v12, 0x300

    iput v12, v0, Lיי/ˑﹳ;->ﾞʻ:I

    :goto_c
    move v14, v3

    :goto_d
    move v13, v4

    move v3, v7

    move v4, v10

    move v12, v11

    const/4 v11, 0x4

    move v10, v8

    move v8, v5

    const/16 v5, 0xd

    goto/16 :goto_4

    :cond_26
    invoke-virtual {v1, v14}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    goto/16 :goto_0

    :cond_27
    return-void
.end method

.method public final ˈ(Z)V
    .locals 0

    return-void
.end method

.method public final ˑﹳ(IJ)V
    .locals 0

    iput-wide p2, p0, Lיי/ˑﹳ;->ʽﹳ:J

    return-void
.end method

.method public final ⁱˊ()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lיי/ˑﹳ;->ʽﹳ:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lיי/ˑﹳ;->ᵔʾ:Z

    iput v0, p0, Lיי/ˑﹳ;->ˆʾ:I

    iput v0, p0, Lיי/ˑﹳ;->ٴﹶ:I

    const/16 v0, 0x100

    iput v0, p0, Lיי/ˑﹳ;->ﾞʻ:I

    return-void
.end method

.method public final ﾞᴵ(Lˊﾞ/ᵔﹳ;Lיי/ٴᵢ;)V
    .locals 2

    .prologue
    invoke-virtual {p2}, Lיי/ٴᵢ;->ﹳٴ()V

    invoke-virtual {p2}, Lיי/ٴᵢ;->ⁱˊ()V

    iget-object v0, p2, Lיי/ٴᵢ;->ˑﹳ:Ljava/lang/String;

    iput-object v0, p0, Lיי/ˑﹳ;->ᵎﹶ:Ljava/lang/String;

    invoke-virtual {p2}, Lיי/ٴᵢ;->ⁱˊ()V

    iget v0, p2, Lיי/ٴᵢ;->ˈ:I

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object v0

    iput-object v0, p0, Lיי/ˑﹳ;->ᵔᵢ:Lˊﾞ/ٴᵢ;

    iput-object v0, p0, Lיי/ˑﹳ;->ʻٴ:Lˊﾞ/ٴᵢ;

    iget-boolean v0, p0, Lיי/ˑﹳ;->ﹳٴ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lיי/ٴᵢ;->ﹳٴ()V

    invoke-virtual {p2}, Lיי/ٴᵢ;->ⁱˊ()V

    iget v0, p2, Lיי/ٴᵢ;->ˈ:I

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object p1

    iput-object p1, p0, Lיי/ˑﹳ;->ʼˎ:Lˊﾞ/ٴᵢ;

    new-instance v0, Lʽⁱ/ᵔﹳ;

    invoke-direct {v0}, Lʽⁱ/ᵔﹳ;-><init>()V

    invoke-virtual {p2}, Lיי/ٴᵢ;->ⁱˊ()V

    iget-object p2, p2, Lיי/ٴᵢ;->ˑﹳ:Ljava/lang/String;

    iput-object p2, v0, Lʽⁱ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    iget-object p2, p0, Lיי/ˑﹳ;->ﾞᴵ:Ljava/lang/String;

    invoke-static {p2}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    const-string p2, "application/id3"

    invoke-static {p2}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    invoke-static {v0, p1}, Lﹳˎ/ˆʾ;->ﾞᴵ(Lʽⁱ/ᵔﹳ;Lˊﾞ/ٴᵢ;)V

    return-void

    :cond_0
    new-instance p1, Lˊﾞ/ᵔʾ;

    invoke-direct {p1}, Lˊﾞ/ᵔʾ;-><init>()V

    iput-object p1, p0, Lיי/ˑﹳ;->ʼˎ:Lˊﾞ/ٴᵢ;

    return-void
.end method
