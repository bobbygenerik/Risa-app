.class public final Lﹳˈ/ﹳٴ;
.super Lﾞˉ/ﹳٴ;
.source "SourceFile"


# instance fields
.field public final ˉʿ:Lﾞˉ/ⁱˊ;

.field public final ٴﹶ:I

.field public final ᵔʾ:Lﾞˉ/ⁱˊ;

.field public final ﾞʻ:I


# direct methods
.method public constructor <init>(Lﾞˉ/ⁱˊ;Lﾞˉ/ⁱˊ;)V
    .locals 2

    invoke-direct {p0}, Lﾞˉ/ﹳٴ;-><init>()V

    sget-object v0, Lﾞˉ/ˈ;->ˊʻ:Lﾞˉ/ˈ;

    iput-object v0, p0, Lﾞˉ/ﹳٴ;->ˑﹳ:Lﾞˉ/ˈ;

    sget-object v0, Lﾞˉ/ˑﹳ;->ᴵˊ:Lﾞˉ/ˑﹳ;

    sget-object v1, Lﾞˉ/ˑﹳ;->ʽʽ:Lﾞˉ/ˑﹳ;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lﾞˉ/ﹳٴ;->ﾞᴵ:Ljava/util/EnumSet;

    const/16 v0, 0x48

    iput-short v0, p0, Lﾞˉ/ﹳٴ;->ᵔᵢ:S

    const/16 v0, 0x4000

    iput v0, p0, Lﹳˈ/ﹳٴ;->ٴﹶ:I

    iput v0, p0, Lﹳˈ/ﹳٴ;->ﾞʻ:I

    iput-object p1, p0, Lﹳˈ/ﹳٴ;->ˉʿ:Lﾞˉ/ⁱˊ;

    iput-object p2, p0, Lﹳˈ/ﹳٴ;->ᵔʾ:Lﾞˉ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ᵎⁱ(Lˊⁱ/ˑﹳ;)V
    .locals 3

    invoke-super {p0, p1}, Lﾞˉ/ﹳٴ;->ᵎⁱ(Lˊⁱ/ˑﹳ;)V

    iget v0, p0, Lﹳˈ/ﹳٴ;->ٴﹶ:I

    invoke-virtual {p1, v0}, Lˊⁱ/ˑﹳ;->ᴵᵔ(I)V

    iget v0, p0, Lﹳˈ/ﹳٴ;->ﾞʻ:I

    invoke-virtual {p1, v0}, Lˊⁱ/ˑﹳ;->ᴵᵔ(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lˊⁱ/ˑﹳ;->ʽʽ(I)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lˊⁱ/ˑﹳ;->ᴵˊ(I)V

    invoke-virtual {p1, v0}, Lˊⁱ/ˑﹳ;->ᴵˊ(I)V

    invoke-virtual {p1, v0}, Lˊⁱ/ˑﹳ;->ᴵᵔ(I)V

    invoke-virtual {p1, v0}, Lˊⁱ/ˑﹳ;->ᴵᵔ(I)V

    invoke-virtual {p1, v1}, Lˊⁱ/ˑﹳ;->ᴵˊ(I)V

    invoke-virtual {p1, v0}, Lˊⁱ/ˑﹳ;->ᴵˊ(I)V

    iget-object v0, p0, Lﹳˈ/ﹳٴ;->ˉʿ:Lﾞˉ/ⁱˊ;

    iget-object v1, v0, Lﾞˉ/ⁱˊ;->ʽʽ:[B

    iget-object v2, p1, Lˊⁱ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lˎﹶ/ﾞᴵ;

    invoke-virtual {v2, v1}, Ljava/io/FilterOutputStream;->write([B)V

    iget-short v1, v0, Lﾞˉ/ⁱˊ;->ˈٴ:S

    invoke-virtual {p1, v1}, Lˊⁱ/ˑﹳ;->ᴵᵔ(I)V

    iget-short v0, v0, Lﾞˉ/ⁱˊ;->ᴵᵔ:S

    invoke-virtual {p1, v0}, Lˊⁱ/ˑﹳ;->ᴵᵔ(I)V

    iget-object v0, p0, Lﹳˈ/ﹳٴ;->ᵔʾ:Lﾞˉ/ⁱˊ;

    iget-object v1, v0, Lﾞˉ/ⁱˊ;->ʽʽ:[B

    invoke-virtual {v2, v1}, Ljava/io/FilterOutputStream;->write([B)V

    iget-short v1, v0, Lﾞˉ/ⁱˊ;->ˈٴ:S

    invoke-virtual {p1, v1}, Lˊⁱ/ˑﹳ;->ᴵᵔ(I)V

    iget-short v0, v0, Lﾞˉ/ⁱˊ;->ᴵᵔ:S

    invoke-virtual {p1, v0}, Lˊⁱ/ˑﹳ;->ᴵᵔ(I)V

    return-void
.end method
