.class public final Lﹶ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Lʾﾞ/ﾞᴵ;

.field public final ʽ:I

.field public final ˆʾ:Z

.field public final ˈ:I

.field public final ˑﹳ:I

.field public final ٴﹶ:Z

.field public final ᵎﹶ:I

.field public final ᵔᵢ:I

.field public final ⁱˊ:I

.field public final ﹳٴ:Lʽⁱ/ﹳᐧ;

.field public final ﾞʻ:Z

.field public final ﾞᴵ:I


# direct methods
.method public constructor <init>(Lʽⁱ/ﹳᐧ;IIIIIIILʾﾞ/ﾞᴵ;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶ/ᵔﹳ;->ﹳٴ:Lʽⁱ/ﹳᐧ;

    iput p2, p0, Lﹶ/ᵔﹳ;->ⁱˊ:I

    iput p3, p0, Lﹶ/ᵔﹳ;->ʽ:I

    iput p4, p0, Lﹶ/ᵔﹳ;->ˈ:I

    iput p5, p0, Lﹶ/ᵔﹳ;->ˑﹳ:I

    iput p6, p0, Lﹶ/ᵔﹳ;->ﾞᴵ:I

    iput p7, p0, Lﹶ/ᵔﹳ;->ᵎﹶ:I

    iput p8, p0, Lﹶ/ᵔﹳ;->ᵔᵢ:I

    iput-object p9, p0, Lﹶ/ᵔﹳ;->ʼˎ:Lʾﾞ/ﾞᴵ;

    iput-boolean p10, p0, Lﹶ/ᵔﹳ;->ˆʾ:Z

    iput-boolean p11, p0, Lﹶ/ᵔﹳ;->ٴﹶ:Z

    iput-boolean p12, p0, Lﹶ/ᵔﹳ;->ﾞʻ:Z

    return-void
.end method


# virtual methods
.method public final ﹳٴ()Lﹶ/ʼˎ;
    .locals 7

    .prologue
    new-instance v0, Lﹶ/ʼˎ;

    iget v1, p0, Lﹶ/ᵔﹳ;->ʽ:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :goto_0
    move v5, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    iget v6, p0, Lﹶ/ᵔﹳ;->ᵔᵢ:I

    iget v1, p0, Lﹶ/ᵔﹳ;->ᵎﹶ:I

    iget v2, p0, Lﹶ/ᵔﹳ;->ˑﹳ:I

    iget v3, p0, Lﹶ/ᵔﹳ;->ﾞᴵ:I

    iget-boolean v4, p0, Lﹶ/ᵔﹳ;->ﾞʻ:Z

    invoke-direct/range {v0 .. v6}, Lﹶ/ʼˎ;-><init>(IIIZZI)V

    return-object v0
.end method
