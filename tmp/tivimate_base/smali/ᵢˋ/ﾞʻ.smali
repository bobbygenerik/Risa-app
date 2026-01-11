.class public abstract Lᵢˋ/ﾞʻ;
.super Lᵢˋ/ˑﹳ;
.source "SourceFile"


# instance fields
.field public final ٴʼ:J


# direct methods
.method public constructor <init>(Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;Lʽⁱ/ﹳᐧ;ILjava/lang/Object;JJJ)V
    .locals 11

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lᵢˋ/ˑﹳ;-><init>(Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;ILʽⁱ/ﹳᐧ;ILjava/lang/Object;JJ)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 p1, p10

    iput-wide p1, p0, Lᵢˋ/ﾞʻ;->ٴʼ:J

    return-void
.end method


# virtual methods
.method public abstract ⁱˊ()Z
.end method

.method public ﹳٴ()J
    .locals 5

    .prologue
    iget-wide v0, p0, Lᵢˋ/ﾞʻ;->ٴʼ:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    return-wide v2
.end method
