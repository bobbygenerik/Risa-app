.class public final Landroidx/lifecycle/ˈʿ$ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/ˈʿ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "\ufe73\u0674"
.end annotation


# static fields
.field public static final Companion:Landroidx/lifecycle/ᵔٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/ᵔٴ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/ˈʿ$ﹳٴ;->Companion:Landroidx/lifecycle/ᵔٴ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final registerIn(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Landroidx/lifecycle/ˈʿ$ﹳٴ;->Companion:Landroidx/lifecycle/ᵔٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ᵔٴ;->ﹳٴ(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    sget p2, Landroidx/lifecycle/ˈʿ;->ᴵˊ:I

    sget-object p2, Landroidx/lifecycle/ˉʿ;->ON_CREATE:Landroidx/lifecycle/ˉʿ;

    invoke-static {p1, p2}, Landroidx/lifecycle/ˆﾞ;->ﹳٴ(Landroid/app/Activity;Landroidx/lifecycle/ˉʿ;)V

    return-void
.end method

.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 1

    sget v0, Landroidx/lifecycle/ˈʿ;->ᴵˊ:I

    sget-object v0, Landroidx/lifecycle/ˉʿ;->ON_RESUME:Landroidx/lifecycle/ˉʿ;

    invoke-static {p1, v0}, Landroidx/lifecycle/ˆﾞ;->ﹳٴ(Landroid/app/Activity;Landroidx/lifecycle/ˉʿ;)V

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 1

    sget v0, Landroidx/lifecycle/ˈʿ;->ᴵˊ:I

    sget-object v0, Landroidx/lifecycle/ˉʿ;->ON_START:Landroidx/lifecycle/ˉʿ;

    invoke-static {p1, v0}, Landroidx/lifecycle/ˆﾞ;->ﹳٴ(Landroid/app/Activity;Landroidx/lifecycle/ˉʿ;)V

    return-void
.end method

.method public onActivityPreDestroyed(Landroid/app/Activity;)V
    .locals 1

    sget v0, Landroidx/lifecycle/ˈʿ;->ᴵˊ:I

    sget-object v0, Landroidx/lifecycle/ˉʿ;->ON_DESTROY:Landroidx/lifecycle/ˉʿ;

    invoke-static {p1, v0}, Landroidx/lifecycle/ˆﾞ;->ﹳٴ(Landroid/app/Activity;Landroidx/lifecycle/ˉʿ;)V

    return-void
.end method

.method public onActivityPrePaused(Landroid/app/Activity;)V
    .locals 1

    sget v0, Landroidx/lifecycle/ˈʿ;->ᴵˊ:I

    sget-object v0, Landroidx/lifecycle/ˉʿ;->ON_PAUSE:Landroidx/lifecycle/ˉʿ;

    invoke-static {p1, v0}, Landroidx/lifecycle/ˆﾞ;->ﹳٴ(Landroid/app/Activity;Landroidx/lifecycle/ˉʿ;)V

    return-void
.end method

.method public onActivityPreStopped(Landroid/app/Activity;)V
    .locals 1

    sget v0, Landroidx/lifecycle/ˈʿ;->ᴵˊ:I

    sget-object v0, Landroidx/lifecycle/ˉʿ;->ON_STOP:Landroidx/lifecycle/ˉʿ;

    invoke-static {p1, v0}, Landroidx/lifecycle/ˆﾞ;->ﹳٴ(Landroid/app/Activity;Landroidx/lifecycle/ˉʿ;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
