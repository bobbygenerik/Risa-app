.class public final Lˈᐧ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:F

.field public ˈ:Z

.field public final ˑﹳ:Ljava/lang/ref/WeakReference;

.field public final ⁱˊ:Lˆᵢ/ⁱˊ;

.field public final ﹳٴ:Landroid/text/TextPaint;

.field public ﾞᴵ:Lﹳ/ˈ;


# direct methods
.method public constructor <init>(Lˆᵢ/ﾞᴵ;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lˈᐧ/ʼˎ;->ﹳٴ:Landroid/text/TextPaint;

    new-instance v0, Lˆᵢ/ⁱˊ;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0}, Lˆᵢ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lˈᐧ/ʼˎ;->ⁱˊ:Lˆᵢ/ⁱˊ;

    iput-boolean v1, p0, Lˈᐧ/ʼˎ;->ˈ:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lˈᐧ/ʼˎ;->ˑﹳ:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lˈᐧ/ʼˎ;->ˑﹳ:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/String;)F
    .locals 3

    .prologue
    iget-boolean v0, p0, Lˈᐧ/ʼˎ;->ˈ:Z

    if-nez v0, :cond_0

    iget p1, p0, Lˈᐧ/ʼˎ;->ʽ:F

    return p1

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lˈᐧ/ʼˎ;->ﹳٴ:Landroid/text/TextPaint;

    if-nez p1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    :goto_0
    iput v2, p0, Lˈᐧ/ʼˎ;->ʽ:F

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    :goto_1
    iput-boolean v0, p0, Lˈᐧ/ʼˎ;->ˈ:Z

    iget p1, p0, Lˈᐧ/ʼˎ;->ʽ:F

    return p1
.end method
