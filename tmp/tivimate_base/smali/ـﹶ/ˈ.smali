.class public final Lـﹶ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lـﹶ/ᵎﹶ;


# static fields
.field public static final ⁱˊ:Ljava/lang/ThreadLocal;


# instance fields
.field public final ﹳٴ:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lـﹶ/ˈ;->ⁱˊ:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lـﹶ/ˈ;->ﹳٴ:Landroid/text/TextPaint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method
