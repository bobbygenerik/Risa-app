.class public final Lʽﹳ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lʽﹳ/ﹳٴ;

.field public static final ˈ:Lʽﹳ/ﹳٴ;


# instance fields
.field public final ⁱˊ:Ljava/lang/Throwable;

.field public final ﹳٴ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    sget-boolean v0, Lʽﹳ/ᵎﹶ;->ˈٴ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lʽﹳ/ﹳٴ;->ˈ:Lʽﹳ/ﹳٴ;

    sput-object v1, Lʽﹳ/ﹳٴ;->ʽ:Lʽﹳ/ﹳٴ;

    return-void

    :cond_0
    new-instance v0, Lʽﹳ/ﹳٴ;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lʽﹳ/ﹳٴ;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, Lʽﹳ/ﹳٴ;->ˈ:Lʽﹳ/ﹳٴ;

    new-instance v0, Lʽﹳ/ﹳٴ;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lʽﹳ/ﹳٴ;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, Lʽﹳ/ﹳٴ;->ʽ:Lʽﹳ/ﹳٴ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lʽﹳ/ﹳٴ;->ﹳٴ:Z

    iput-object p1, p0, Lʽﹳ/ﹳٴ;->ⁱˊ:Ljava/lang/Throwable;

    return-void
.end method
