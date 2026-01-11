.class public final Lﹶʽ/יـ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:[I

.field public final ﹳٴ:Lʽⁱ/ـˏ;


# direct methods
.method public constructor <init>(ILʽⁱ/ـˏ;[I)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length p1, p3

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v0, "ETSDefinition"

    const-string v1, "Empty tracks are not allowed"

    invoke-static {v0, v1, p1}, Lᐧˎ/ﹳٴ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iput-object p2, p0, Lﹶʽ/יـ;->ﹳٴ:Lʽⁱ/ـˏ;

    iput-object p3, p0, Lﹶʽ/יـ;->ⁱˊ:[I

    return-void
.end method
