.class public final Lיˎ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Lיˎ/ʽ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lיˎ/ʽ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lיˎ/ʽ;->ﹳٴ:Lיˎ/ʽ;

    return-void
.end method


# virtual methods
.method public ʽ(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lיˎ/ʽ;->ﹳٴ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FirebaseCrashlytics"

    const/4 v1, 0x0

    nop

    :cond_0
    return-void
.end method

.method public ˈ(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lיˎ/ʽ;->ﹳٴ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FirebaseCrashlytics"

    nop

    :cond_0
    return-void
.end method

.method public ⁱˊ(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lיˎ/ʽ;->ﹳٴ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FirebaseCrashlytics"

    const/4 v1, 0x0

    nop

    :cond_0
    return-void
.end method

.method public ﹳٴ(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x4

    if-le v0, p1, :cond_1

    const-string v0, "FirebaseCrashlytics"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
