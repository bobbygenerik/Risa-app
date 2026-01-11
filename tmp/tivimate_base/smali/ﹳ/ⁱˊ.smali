.class public final Lﹳ/ⁱˊ;
.super Lˉٴ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public final synthetic ʼˎ:Lﹳ/ˈ;

.field public final synthetic ᵔᵢ:Lᴵˋ/ˊʻ;


# direct methods
.method public constructor <init>(Lﹳ/ˈ;Lᴵˋ/ˊʻ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳ/ⁱˊ;->ʼˎ:Lﹳ/ˈ;

    iput-object p2, p0, Lﹳ/ⁱˊ;->ᵔᵢ:Lᴵˋ/ˊʻ;

    return-void
.end method


# virtual methods
.method public final ʼˎ(I)V
    .locals 2

    iget-object v0, p0, Lﹳ/ⁱˊ;->ʼˎ:Lﹳ/ˈ;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lﹳ/ˈ;->ᵔʾ:Z

    iget-object v0, p0, Lﹳ/ⁱˊ;->ᵔᵢ:Lᴵˋ/ˊʻ;

    invoke-virtual {v0, p1}, Lᴵˋ/ˊʻ;->ˈٴ(I)V

    return-void
.end method

.method public final ˆʾ(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Lﹳ/ⁱˊ;->ʼˎ:Lﹳ/ˈ;

    iget v1, v0, Lﹳ/ˈ;->ˈ:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, v0, Lﹳ/ˈ;->ʼᐧ:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lﹳ/ˈ;->ᵔʾ:Z

    iget-object p1, v0, Lﹳ/ˈ;->ʼᐧ:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    iget-object v1, p0, Lﹳ/ⁱˊ;->ᵔᵢ:Lᴵˋ/ˊʻ;

    invoke-virtual {v1, p1, v0}, Lᴵˋ/ˊʻ;->ᴵᵔ(Landroid/graphics/Typeface;Z)V

    return-void
.end method
