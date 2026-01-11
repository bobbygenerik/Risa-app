.class public abstract Lˈᵎ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final ﹳٴ:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lˈᵎ/ﹳٴ;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lˈᵎ/ﹳٴ;->ﹳٴ:Ljava/util/logging/Logger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lˈᵎ/ﹳٴ;->ⁱˊ:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static ﹳٴ()Z
    .locals 1

    .prologue
    sget-object v0, Lˈᵎ/ﹳٴ;->ⁱˊ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
