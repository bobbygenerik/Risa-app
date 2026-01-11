.class public final synthetic Lʽˊ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic ʾˋ:Lʽˊ/ٴﹶ;


# direct methods
.method public synthetic constructor <init>(Lʽˊ/ٴﹶ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽˊ/ᵔᵢ;->ʾˋ:Lʽˊ/ٴﹶ;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object p1, p0, Lʽˊ/ᵔᵢ;->ʾˋ:Lʽˊ/ٴﹶ;

    iget-wide v3, p1, Lʽˊ/ٴﹶ;->ˉˆ:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    :cond_0
    iput-boolean p2, p1, Lʽˊ/ٴﹶ;->ˉʿ:Z

    :cond_1
    invoke-virtual {p1}, Lʽˊ/ٴﹶ;->ˏי()V

    iput-boolean v0, p1, Lʽˊ/ٴﹶ;->ˉʿ:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lʽˊ/ٴﹶ;->ˉˆ:J

    :cond_2
    return p2
.end method
