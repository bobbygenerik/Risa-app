.class public final Lᵢʾ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:Lᵢʾ/ⁱˊ;


# instance fields
.field public final ﹳٴ:Lᵔﹶ/ᴵˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lᵔﹶ/ᴵˊ;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lᵔﹶ/ᴵˊ;-><init>(I)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lᵢʾ/ⁱˊ;

    invoke-direct {v2, v0, v1}, Lᵢʾ/ⁱˊ;-><init>(Lᵔﹶ/ᴵˊ;Landroid/os/Looper;)V

    sput-object v2, Lᵢʾ/ⁱˊ;->ⁱˊ:Lᵢʾ/ⁱˊ;

    return-void
.end method

.method public constructor <init>(Lᵔﹶ/ᴵˊ;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵢʾ/ⁱˊ;->ﹳٴ:Lᵔﹶ/ᴵˊ;

    return-void
.end method
