.class public final Lˎˉ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Ljava/lang/String;

.field public final ʼᐧ:J

.field public final ʽ:J

.field public final ˆʾ:[Lʽⁱ/ﹳᐧ;

.field public final ˈ:Ljava/lang/String;

.field public final ˉʿ:Ljava/lang/String;

.field public final ˉˆ:[J

.field public final ˑﹳ:I

.field public final ٴﹶ:I

.field public final ᵎﹶ:I

.field public final ᵔʾ:Ljava/util/List;

.field public final ᵔᵢ:I

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:I

.field public final ﾞʻ:Ljava/lang/String;

.field public final ﾞᴵ:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;IIIILjava/lang/String;[Lʽⁱ/ﹳᐧ;Ljava/util/List;[JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎˉ/ⁱˊ;->ﾞʻ:Ljava/lang/String;

    iput-object p2, p0, Lˎˉ/ⁱˊ;->ˉʿ:Ljava/lang/String;

    iput p3, p0, Lˎˉ/ⁱˊ;->ﹳٴ:I

    iput-object p4, p0, Lˎˉ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    iput-wide p5, p0, Lˎˉ/ⁱˊ;->ʽ:J

    iput-object p7, p0, Lˎˉ/ⁱˊ;->ˈ:Ljava/lang/String;

    iput p8, p0, Lˎˉ/ⁱˊ;->ˑﹳ:I

    iput p9, p0, Lˎˉ/ⁱˊ;->ﾞᴵ:I

    iput p10, p0, Lˎˉ/ⁱˊ;->ᵎﹶ:I

    iput p11, p0, Lˎˉ/ⁱˊ;->ᵔᵢ:I

    iput-object p12, p0, Lˎˉ/ⁱˊ;->ʼˎ:Ljava/lang/String;

    iput-object p13, p0, Lˎˉ/ⁱˊ;->ˆʾ:[Lʽⁱ/ﹳᐧ;

    iput-object p14, p0, Lˎˉ/ⁱˊ;->ᵔʾ:Ljava/util/List;

    iput-object p15, p0, Lˎˉ/ⁱˊ;->ˉˆ:[J

    move-wide/from16 p2, p16

    iput-wide p2, p0, Lˎˉ/ⁱˊ;->ʼᐧ:J

    invoke-interface {p14}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lˎˉ/ⁱˊ;->ٴﹶ:I

    return-void
.end method


# virtual methods
.method public final ⁱˊ(I)J
    .locals 4

    .prologue
    iget v0, p0, Lˎˉ/ⁱˊ;->ٴﹶ:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget-wide v0, p0, Lˎˉ/ⁱˊ;->ʼᐧ:J

    return-wide v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lˎˉ/ⁱˊ;->ˉˆ:[J

    aget-wide v2, v1, v0

    aget-wide v0, v1, p1

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public final ﹳٴ([Lʽⁱ/ﹳᐧ;)Lˎˉ/ⁱˊ;
    .locals 19

    move-object/from16 v0, p0

    new-instance v1, Lˎˉ/ⁱˊ;

    iget-object v2, v0, Lˎˉ/ⁱˊ;->ˉˆ:[J

    iget-wide v3, v0, Lˎˉ/ⁱˊ;->ʼᐧ:J

    move-object/from16 v16, v2

    iget-object v2, v0, Lˎˉ/ⁱˊ;->ﾞʻ:Ljava/lang/String;

    move-wide/from16 v17, v3

    iget-object v3, v0, Lˎˉ/ⁱˊ;->ˉʿ:Ljava/lang/String;

    iget v4, v0, Lˎˉ/ⁱˊ;->ﹳٴ:I

    iget-object v5, v0, Lˎˉ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    iget-wide v6, v0, Lˎˉ/ⁱˊ;->ʽ:J

    iget-object v8, v0, Lˎˉ/ⁱˊ;->ˈ:Ljava/lang/String;

    iget v9, v0, Lˎˉ/ⁱˊ;->ˑﹳ:I

    iget v10, v0, Lˎˉ/ⁱˊ;->ﾞᴵ:I

    iget v11, v0, Lˎˉ/ⁱˊ;->ᵎﹶ:I

    iget v12, v0, Lˎˉ/ⁱˊ;->ᵔᵢ:I

    iget-object v13, v0, Lˎˉ/ⁱˊ;->ʼˎ:Ljava/lang/String;

    iget-object v15, v0, Lˎˉ/ⁱˊ;->ᵔʾ:Ljava/util/List;

    move-object/from16 v14, p1

    invoke-direct/range {v1 .. v18}, Lˎˉ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;IIIILjava/lang/String;[Lʽⁱ/ﹳᐧ;Ljava/util/List;[JJ)V

    return-object v1
.end method
