.class public final Lˈˊ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lˈˊ/ﹳٴ;

.field public static final ⁱˊ:Lˈˊ/ﹳٴ;


# instance fields
.field public final ﹳٴ:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    sget-boolean v0, Lˈˊ/ˉʿ;->ˈٴ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lˈˊ/ﹳٴ;->ʽ:Lˈˊ/ﹳٴ;

    sput-object v1, Lˈˊ/ﹳٴ;->ⁱˊ:Lˈˊ/ﹳٴ;

    return-void

    :cond_0
    new-instance v0, Lˈˊ/ﹳٴ;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lˈˊ/ﹳٴ;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, Lˈˊ/ﹳٴ;->ʽ:Lˈˊ/ﹳٴ;

    new-instance v0, Lˈˊ/ﹳٴ;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lˈˊ/ﹳٴ;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, Lˈˊ/ﹳٴ;->ⁱˊ:Lˈˊ/ﹳٴ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˈˊ/ﹳٴ;->ﹳٴ:Ljava/lang/Throwable;

    return-void
.end method
