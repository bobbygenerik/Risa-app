.class public final Lᵢˋ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ٴᵢ;


# instance fields
.field public final ʽ:Lˊﾞ/ᵔʾ;

.field public ˈ:Lʽⁱ/ﹳᐧ;

.field public ˑﹳ:Lˊﾞ/ٴᵢ;

.field public final ⁱˊ:Lʽⁱ/ﹳᐧ;

.field public final ﹳٴ:I

.field public ﾞᴵ:J


# direct methods
.method public constructor <init>(IILʽⁱ/ﹳᐧ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lᵢˋ/ʽ;->ﹳٴ:I

    iput-object p3, p0, Lᵢˋ/ʽ;->ⁱˊ:Lʽⁱ/ﹳᐧ;

    new-instance p1, Lˊﾞ/ᵔʾ;

    invoke-direct {p1}, Lˊﾞ/ᵔʾ;-><init>()V

    iput-object p1, p0, Lᵢˋ/ʽ;->ʽ:Lˊﾞ/ᵔʾ;

    return-void
.end method


# virtual methods
.method public final ʽ(Lʽⁱ/ˆʾ;IZ)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lᵢˋ/ʽ;->ﾞᴵ(Lʽⁱ/ˆʾ;IZ)I

    move-result p1

    return p1
.end method

.method public final ˈ(Lʽⁱ/ﹳᐧ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lᵢˋ/ʽ;->ⁱˊ:Lʽⁱ/ﹳᐧ;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lʽⁱ/ﹳᐧ;->ˈ(Lʽⁱ/ﹳᐧ;)Lʽⁱ/ﹳᐧ;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lᵢˋ/ʽ;->ˈ:Lʽⁱ/ﹳᐧ;

    iget-object v0, p0, Lᵢˋ/ʽ;->ˑﹳ:Lˊﾞ/ٴᵢ;

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-interface {v0, p1}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    return-void
.end method

.method public final synthetic ˑﹳ(ILᐧˎ/ﹳᐧ;)V
    .locals 0

    invoke-static {p0, p2, p1}, Lˉˆ/ٴᴵ;->ﹳٴ(Lˊﾞ/ٴᵢ;Lᐧˎ/ﹳᐧ;I)V

    return-void
.end method

.method public final ⁱˊ(Lᐧˎ/ﹳᐧ;II)V
    .locals 1

    iget-object p3, p0, Lᵢˋ/ʽ;->ˑﹳ:Lˊﾞ/ٴᵢ;

    sget-object v0, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-interface {p3, p2, p1}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    return-void
.end method

.method public final ﹳٴ(JIIILˊﾞ/ˊʻ;)V
    .locals 8

    .prologue
    iget-wide v0, p0, Lᵢˋ/ʽ;->ﾞᴵ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lᵢˋ/ʽ;->ʽ:Lˊﾞ/ᵔʾ;

    iput-object v0, p0, Lᵢˋ/ʽ;->ˑﹳ:Lˊﾞ/ٴᵢ;

    :cond_0
    iget-object v1, p0, Lᵢˋ/ʽ;->ˑﹳ:Lˊﾞ/ٴᵢ;

    sget-object v0, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    return-void
.end method

.method public final ﾞᴵ(Lʽⁱ/ˆʾ;IZ)I
    .locals 2

    iget-object v0, p0, Lᵢˋ/ʽ;->ˑﹳ:Lˊﾞ/ٴᵢ;

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-interface {v0, p1, p2, p3}, Lˊﾞ/ٴᵢ;->ʽ(Lʽⁱ/ˆʾ;IZ)I

    move-result p1

    return p1
.end method
