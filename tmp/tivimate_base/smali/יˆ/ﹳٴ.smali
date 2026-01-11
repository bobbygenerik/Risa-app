.class public final Lיˆ/ﹳٴ;
.super Lˋʼ/ﹳٴ;
.source "SourceFile"


# instance fields
.field public final ᵎﹶ:Lˋʼ/ﹳٴ;

.field public final ᵔᵢ:Lﾞˎ/ﹳٴ;


# direct methods
.method public constructor <init>(Lˊʾ/ʼˎ;Lˋʼ/ﹳٴ;)V
    .locals 1

    invoke-direct {p0}, Lˎʿ/ⁱˊ;-><init>()V

    iput-object p2, p0, Lיˆ/ﹳٴ;->ᵎﹶ:Lˋʼ/ﹳٴ;

    iget-object p1, p1, Lˊʾ/ʼˎ;->ˉٴ:Ljava/lang/Object;

    check-cast p1, Lיˆ/ⁱˊ;

    iget-object p2, p1, Lיˆ/ⁱˊ;->ˈ:[B

    iget-object v0, p1, Lיˆ/ⁱˊ;->ʽ:Ljava/lang/String;

    iget-object p1, p1, Lיˆ/ⁱˊ;->ⁱˊ:Lﾞˎ/ʽ;

    invoke-interface {p1, v0}, Lﾞˎ/ʽ;->ˈ(Ljava/lang/String;)Lﾞˎ/ﹳٴ;

    move-result-object p1

    invoke-interface {p1, p2}, Lﾞˎ/ﹳٴ;->ˉʿ([B)V

    iput-object p1, p0, Lיˆ/ﹳٴ;->ᵔᵢ:Lﾞˎ/ﹳٴ;

    return-void
.end method


# virtual methods
.method public final ˈ(B)Lˎʿ/ⁱˊ;
    .locals 1

    iget-object v0, p0, Lיˆ/ﹳٴ;->ᵔᵢ:Lﾞˎ/ﹳٴ;

    invoke-interface {v0, p1}, Lﾞˎ/ﹳٴ;->ᵔᵢ(B)V

    iget-object v0, p0, Lיˆ/ﹳٴ;->ᵎﹶ:Lˋʼ/ﹳٴ;

    invoke-virtual {v0, p1}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    return-object p0
.end method

.method public final ˑﹳ(I[B)Lˎʿ/ⁱˊ;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lיˆ/ﹳٴ;->ᵔᵢ:Lﾞˎ/ﹳٴ;

    invoke-interface {v1, p2, v0, p1}, Lﾞˎ/ﹳٴ;->update([BII)V

    iget-object v0, p0, Lיˆ/ﹳٴ;->ᵎﹶ:Lˋʼ/ﹳٴ;

    invoke-virtual {v0, p1, p2}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    return-object p0
.end method
