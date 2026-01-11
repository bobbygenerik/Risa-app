.class public abstract Lᵢˋ/ﹳٴ;
.super Lᵢˋ/ﾞʻ;
.source "SourceFile"


# instance fields
.field public ˆﾞ:Lـʾ/ᵔﹳ;

.field public final ᵎˊ:J

.field public final ᵔי:J

.field public ᵔٴ:[I


# direct methods
.method public constructor <init>(Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;Lʽⁱ/ﹳᐧ;ILjava/lang/Object;JJJJJ)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p14

    invoke-direct/range {v0 .. v11}, Lᵢˋ/ﾞʻ;-><init>(Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;Lʽⁱ/ﹳᐧ;ILjava/lang/Object;JJJ)V

    move-wide/from16 p1, p10

    iput-wide p1, p0, Lᵢˋ/ﹳٴ;->ᵎˊ:J

    move-wide/from16 p1, p12

    iput-wide p1, p0, Lᵢˋ/ﹳٴ;->ᵔי:J

    return-void
.end method


# virtual methods
.method public final ˈ(I)I
    .locals 1

    iget-object v0, p0, Lᵢˋ/ﹳٴ;->ᵔٴ:[I

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    aget p1, v0, p1

    return p1
.end method
