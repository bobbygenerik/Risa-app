.class public final Lᴵﹶ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʾˎ/ˑﹳ;


# instance fields
.field public ʽʽ:Lⁱⁱ/ʽ;

.field public final ʾˋ:I

.field public final ˈٴ:Landroid/os/Handler;

.field public final ˊʻ:J

.field public ٴᵢ:Landroid/graphics/Bitmap;

.field public final ᴵˊ:I

.field public final ᴵᵔ:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;IJ)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    invoke-static {v0, v0}, Lʿٴ/ᵔʾ;->ʼˎ(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lᴵﹶ/ˈ;->ʾˋ:I

    iput v0, p0, Lᴵﹶ/ˈ;->ᴵˊ:I

    iput-object p1, p0, Lᴵﹶ/ˈ;->ˈٴ:Landroid/os/Handler;

    iput p2, p0, Lᴵﹶ/ˈ;->ᴵᵔ:I

    iput-wide p3, p0, Lᴵﹶ/ˈ;->ˊʻ:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: -2147483648 and height: -2147483648"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ʼˎ(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lᴵﹶ/ˈ;->ٴᵢ:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final ʽ()V
    .locals 0

    return-void
.end method

.method public final ˆʾ()V
    .locals 0

    return-void
.end method

.method public final ˈ(Lⁱⁱ/ᵎﹶ;)V
    .locals 0

    return-void
.end method

.method public final ˑﹳ(Lⁱⁱ/ᵎﹶ;)V
    .locals 2

    iget v0, p0, Lᴵﹶ/ˈ;->ʾˋ:I

    iget v1, p0, Lᴵﹶ/ˈ;->ᴵˊ:I

    invoke-virtual {p1, v0, v1}, Lⁱⁱ/ᵎﹶ;->ˉʿ(II)V

    return-void
.end method

.method public final ٴﹶ()V
    .locals 0

    return-void
.end method

.method public final ᵎﹶ(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final ᵔᵢ()Lⁱⁱ/ʽ;
    .locals 1

    iget-object v0, p0, Lᴵﹶ/ˈ;->ʽʽ:Lⁱⁱ/ʽ;

    return-object v0
.end method

.method public final ⁱˊ(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final ﹳٴ(Lⁱⁱ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lᴵﹶ/ˈ;->ʽʽ:Lⁱⁱ/ʽ;

    return-void
.end method

.method public final ﾞᴵ(Ljava/lang/Object;Lˈʼ/ʽ;)V
    .locals 2

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lᴵﹶ/ˈ;->ٴᵢ:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    iget-object p2, p0, Lᴵﹶ/ˈ;->ˈٴ:Landroid/os/Handler;

    invoke-virtual {p2, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-wide v0, p0, Lᴵﹶ/ˈ;->ˊʻ:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method
