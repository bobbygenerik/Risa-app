.class public final synthetic Lʽˊ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$OnDismissListener;


# instance fields
.field public final synthetic ﹳٴ:Lʽˊ/ٴﹶ;


# direct methods
.method public synthetic constructor <init>(Lʽˊ/ٴﹶ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽˊ/ʼˎ;->ﹳٴ:Lʽˊ/ٴﹶ;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lʽˊ/ʼˎ;->ﹳٴ:Lʽˊ/ٴﹶ;

    iput-boolean v0, v1, Lʽˊ/ٴﹶ;->ˉʿ:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lʽˊ/ٴﹶ;->ˉˆ:J

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lʽˊ/ٴﹶ;->יـ(Z)V

    return-void
.end method
