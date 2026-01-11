.class public final Lˊˋ/ﹳٴ;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field public final ʽʽ:I

.field public final ʾˋ:I

.field public final ᴵˊ:Lˊˋ/ᵔᵢ;


# direct methods
.method public constructor <init>(ILˊˋ/ᵔᵢ;I)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput p1, p0, Lˊˋ/ﹳٴ;->ʾˋ:I

    iput-object p2, p0, Lˊˋ/ﹳٴ;->ᴵˊ:Lˊˋ/ᵔᵢ;

    iput p3, p0, Lˊˋ/ﹳٴ;->ʽʽ:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    iget v1, p0, Lˊˋ/ﹳٴ;->ʾˋ:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lˊˋ/ﹳٴ;->ʽʽ:I

    iget-object v1, p0, Lˊˋ/ﹳٴ;->ᴵˊ:Lˊˋ/ᵔᵢ;

    iget-object v1, v1, Lˊˋ/ᵔᵢ;->ﹳٴ:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    return-void
.end method
