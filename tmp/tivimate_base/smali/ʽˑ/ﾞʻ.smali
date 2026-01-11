.class public final Lʽˑ/ﾞʻ;
.super Lʽˑ/ʼᐧ;
.source "SourceFile"


# instance fields
.field public final ʻٴ:Lʽˑ/ٴﹶ;

.field public final ʼˎ:Z

.field public final ʼᐧ:Z

.field public final ʽﹳ:J

.field public final ˆʾ:I

.field public final ˈ:I

.field public final ˉʿ:J

.field public final ˉˆ:Z

.field public final ˏי:Lʼʻ/ᵔי;

.field public final ˑﹳ:J

.field public final יـ:Lʼʻ/ᵎⁱ;

.field public final ـˆ:Lʼʻ/ᵎⁱ;

.field public final ٴﹶ:J

.field public final ᵎﹶ:Z

.field public final ᵔʾ:J

.field public final ᵔᵢ:J

.field public final ᵔﹳ:Lʽⁱ/ᵔʾ;

.field public final ﹳᐧ:Lʼʻ/ᵎⁱ;

.field public final ﾞʻ:I

.field public final ﾞᴵ:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLʽⁱ/ᵔʾ;Ljava/util/List;Ljava/util/List;Lʽˑ/ٴﹶ;Ljava/util/Map;Ljava/util/List;)V
    .locals 4

    .prologue
    move/from16 v0, p18

    invoke-direct {p0, p2, p3, v0}, Lʽˑ/ʼᐧ;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    iput p1, p0, Lʽˑ/ﾞʻ;->ˈ:I

    iput-wide p7, p0, Lʽˑ/ﾞʻ;->ᵔᵢ:J

    iput-boolean p6, p0, Lʽˑ/ﾞʻ;->ᵎﹶ:Z

    iput-boolean p9, p0, Lʽˑ/ﾞʻ;->ʼˎ:Z

    iput p10, p0, Lʽˑ/ﾞʻ;->ˆʾ:I

    move-wide p1, p11

    iput-wide p1, p0, Lʽˑ/ﾞʻ;->ٴﹶ:J

    move/from16 p1, p13

    iput p1, p0, Lʽˑ/ﾞʻ;->ﾞʻ:I

    move-wide/from16 p1, p14

    iput-wide p1, p0, Lʽˑ/ﾞʻ;->ˉʿ:J

    move-wide/from16 p1, p16

    iput-wide p1, p0, Lʽˑ/ﾞʻ;->ᵔʾ:J

    move/from16 p1, p19

    iput-boolean p1, p0, Lʽˑ/ﾞʻ;->ˉˆ:Z

    move/from16 p1, p20

    iput-boolean p1, p0, Lʽˑ/ﾞʻ;->ʼᐧ:Z

    move-object/from16 p1, p21

    iput-object p1, p0, Lʽˑ/ﾞʻ;->ᵔﹳ:Lʽⁱ/ᵔʾ;

    invoke-static/range {p22 .. p22}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object p1

    iput-object p1, p0, Lʽˑ/ﾞʻ;->ﹳᐧ:Lʼʻ/ᵎⁱ;

    invoke-static/range {p23 .. p23}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object p1

    iput-object p1, p0, Lʽˑ/ﾞʻ;->יـ:Lʼʻ/ᵎⁱ;

    invoke-static/range {p25 .. p25}, Lʼʻ/ᵔי;->ﹳٴ(Ljava/util/Map;)Lʼʻ/ᵔי;

    move-result-object p1

    iput-object p1, p0, Lʽˑ/ﾞʻ;->ˏי:Lʼʻ/ᵔי;

    invoke-static/range {p26 .. p26}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object p1

    iput-object p1, p0, Lʽˑ/ﾞʻ;->ـˆ:Lʼʻ/ᵎⁱ;

    invoke-interface/range {p23 .. p23}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const-wide/16 p2, 0x0

    if-nez p1, :cond_0

    invoke-static/range {p23 .. p23}, Lʼʻ/ﹳᐧ;->ˆʾ(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʽˑ/ᵎﹶ;

    iget-wide v0, p1, Lʽˑ/ˆʾ;->ᴵᵔ:J

    iget-wide v2, p1, Lʽˑ/ˆʾ;->ʽʽ:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lʽˑ/ﾞʻ;->ʽﹳ:J

    goto :goto_0

    :cond_0
    invoke-interface/range {p22 .. p22}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static/range {p22 .. p22}, Lʼʻ/ﹳᐧ;->ˆʾ(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʽˑ/ʼˎ;

    iget-wide v0, p1, Lʽˑ/ˆʾ;->ᴵᵔ:J

    iget-wide v2, p1, Lʽˑ/ˆʾ;->ʽʽ:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lʽˑ/ﾞʻ;->ʽﹳ:J

    goto :goto_0

    :cond_1
    iput-wide p2, p0, Lʽˑ/ﾞʻ;->ʽﹳ:J

    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p4, v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    cmp-long p1, p4, p2

    if-ltz p1, :cond_3

    iget-wide v0, p0, Lʽˑ/ﾞʻ;->ʽﹳ:J

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_1

    :cond_3
    iget-wide v0, p0, Lʽˑ/ﾞʻ;->ʽﹳ:J

    add-long/2addr v0, p4

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Lʽˑ/ﾞʻ;->ˑﹳ:J

    cmp-long p1, p4, p2

    if-ltz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lʽˑ/ﾞʻ;->ﾞᴵ:Z

    move-object/from16 p1, p24

    iput-object p1, p0, Lʽˑ/ﾞʻ;->ʻٴ:Lʽˑ/ٴﹶ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method
