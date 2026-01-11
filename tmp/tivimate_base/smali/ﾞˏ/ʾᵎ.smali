.class public final Lﾞˏ/ʾᵎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final ʾˋ:Landroid/hardware/display/DisplayManager;

.field public final synthetic ᴵˊ:Lﾞˏ/ᵢˏ;


# direct methods
.method public constructor <init>(Lﾞˏ/ᵢˏ;Landroid/hardware/display/DisplayManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﾞˏ/ʾᵎ;->ᴵˊ:Lﾞˏ/ᵢˏ;

    iput-object p2, p0, Lﾞˏ/ʾᵎ;->ʾˋ:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    .prologue
    if-nez p1, :cond_0

    iget-object p1, p0, Lﾞˏ/ʾᵎ;->ʾˋ:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lﾞˏ/ʾᵎ;->ᴵˊ:Lﾞˏ/ᵢˏ;

    invoke-static {v0, p1}, Lﾞˏ/ᵢˏ;->ﹳٴ(Lﾞˏ/ᵢˏ;Landroid/view/Display;)V

    :cond_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
