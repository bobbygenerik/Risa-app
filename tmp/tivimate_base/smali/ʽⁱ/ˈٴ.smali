.class public final Lʽⁱ/ˈٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʻٴ:Ljava/lang/Integer;

.field public ʼʼ:Ljava/lang/Integer;

.field public ʼˎ:Ljava/lang/Integer;

.field public ʼᐧ:Ljava/lang/Integer;

.field public ʽ:Ljava/lang/CharSequence;

.field public ʽﹳ:Ljava/lang/Integer;

.field public ʾᵎ:Ljava/lang/CharSequence;

.field public ˆʾ:Ljava/lang/Integer;

.field public ˈ:Ljava/lang/CharSequence;

.field public ˉʿ:Ljava/lang/Integer;

.field public ˉˆ:Ljava/lang/Integer;

.field public ˏי:Ljava/lang/CharSequence;

.field public ˑﹳ:Ljava/lang/CharSequence;

.field public יـ:Ljava/lang/CharSequence;

.field public ـˆ:Ljava/lang/CharSequence;

.field public ٴﹶ:Ljava/lang/Boolean;

.field public ᵎﹶ:Ljava/lang/Integer;

.field public ᵔʾ:Ljava/lang/Integer;

.field public ᵔᵢ:Ljava/lang/Integer;

.field public ᵔﹳ:Ljava/lang/Integer;

.field public ᵢˏ:Lʼʻ/ᵎⁱ;

.field public ⁱˊ:Ljava/lang/CharSequence;

.field public ﹳٴ:Ljava/lang/CharSequence;

.field public ﹳᐧ:Ljava/lang/CharSequence;

.field public ﾞʻ:Ljava/lang/Integer;

.field public ﾞᴵ:[B


# virtual methods
.method public final ﹳٴ(I[B)V
    .locals 2

    .prologue
    iget-object v0, p0, Lʽⁱ/ˈٴ;->ﾞᴵ:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    iget-object v1, p0, Lʽⁱ/ˈٴ;->ᵎﹶ:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, p0, Lʽⁱ/ˈٴ;->ﾞᴵ:[B

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lʽⁱ/ˈٴ;->ᵎﹶ:Ljava/lang/Integer;

    return-void
.end method
