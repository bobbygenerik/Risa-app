.class public final Lʻˆ/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:[J

.field public final ʽ:J

.field public final ˆʾ:[J

.field public final ˈ:J

.field public final ˑﹳ:J

.field public final ٴﹶ:I

.field public final ᵎﹶ:Lʽⁱ/ﹳᐧ;

.field public final ᵔᵢ:I

.field public final ⁱˊ:I

.field public final ﹳٴ:I

.field public final ﾞʻ:[Lʻˆ/ʽﹳ;

.field public final ﾞᴵ:J


# direct methods
.method public constructor <init>(IIJJJJLʽⁱ/ﹳᐧ;I[Lʻˆ/ʽﹳ;I[J[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lʻˆ/ˏי;->ﹳٴ:I

    iput p2, p0, Lʻˆ/ˏי;->ⁱˊ:I

    iput-wide p3, p0, Lʻˆ/ˏי;->ʽ:J

    iput-wide p5, p0, Lʻˆ/ˏי;->ˈ:J

    iput-wide p7, p0, Lʻˆ/ˏי;->ˑﹳ:J

    iput-wide p9, p0, Lʻˆ/ˏי;->ﾞᴵ:J

    iput-object p11, p0, Lʻˆ/ˏי;->ᵎﹶ:Lʽⁱ/ﹳᐧ;

    iput p12, p0, Lʻˆ/ˏי;->ᵔᵢ:I

    iput-object p13, p0, Lʻˆ/ˏי;->ﾞʻ:[Lʻˆ/ʽﹳ;

    iput p14, p0, Lʻˆ/ˏי;->ٴﹶ:I

    iput-object p15, p0, Lʻˆ/ˏי;->ʼˎ:[J

    move-object/from16 p1, p16

    iput-object p1, p0, Lʻˆ/ˏי;->ˆʾ:[J

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lʽⁱ/ﹳᐧ;)Lʻˆ/ˏי;
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Lʻˆ/ˏי;

    iget-object v2, v0, Lʻˆ/ˏי;->ʼˎ:[J

    iget-object v3, v0, Lʻˆ/ˏי;->ˆʾ:[J

    move-object/from16 v16, v2

    iget v2, v0, Lʻˆ/ˏי;->ﹳٴ:I

    move-object/from16 v17, v3

    iget v3, v0, Lʻˆ/ˏי;->ⁱˊ:I

    iget-wide v4, v0, Lʻˆ/ˏי;->ʽ:J

    iget-wide v6, v0, Lʻˆ/ˏי;->ˈ:J

    iget-wide v8, v0, Lʻˆ/ˏי;->ˑﹳ:J

    iget-wide v10, v0, Lʻˆ/ˏי;->ﾞᴵ:J

    iget v13, v0, Lʻˆ/ˏי;->ᵔᵢ:I

    iget-object v14, v0, Lʻˆ/ˏי;->ﾞʻ:[Lʻˆ/ʽﹳ;

    iget v15, v0, Lʻˆ/ˏי;->ٴﹶ:I

    move-object/from16 v12, p1

    invoke-direct/range {v1 .. v17}, Lʻˆ/ˏי;-><init>(IIJJJJLʽⁱ/ﹳᐧ;I[Lʻˆ/ʽﹳ;I[J[J)V

    return-object v1
.end method
