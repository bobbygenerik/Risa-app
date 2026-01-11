.class public final synthetic Lـʾ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lـʾ/ﹳٴ;


# instance fields
.field public final synthetic ʽʽ:Lᴵˋ/ⁱˊ;

.field public final synthetic ʾˋ:Ljava/util/concurrent/Executor;

.field public final synthetic ˈٴ:Landroidx/work/impl/WorkDatabase;

.field public final synthetic ᴵˊ:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/List;Lᴵˋ/ⁱˊ;Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lـʾ/ﾞᴵ;->ʾˋ:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lـʾ/ﾞᴵ;->ᴵˊ:Ljava/util/List;

    iput-object p3, p0, Lـʾ/ﾞᴵ;->ʽʽ:Lᴵˋ/ⁱˊ;

    iput-object p4, p0, Lـʾ/ﾞᴵ;->ˈٴ:Landroidx/work/impl/WorkDatabase;

    return-void
.end method


# virtual methods
.method public final ˈ(Lˑᵎ/ﾞʻ;Z)V
    .locals 3

    new-instance p2, Lˆי/ˉˆ;

    iget-object v0, p0, Lـʾ/ﾞᴵ;->ᴵˊ:Ljava/util/List;

    iget-object v1, p0, Lـʾ/ﾞᴵ;->ʽʽ:Lᴵˋ/ⁱˊ;

    iget-object v2, p0, Lـʾ/ﾞᴵ;->ˈٴ:Landroidx/work/impl/WorkDatabase;

    invoke-direct {p2, v0, p1, v1, v2}, Lˆי/ˉˆ;-><init>(Ljava/util/List;Lˑᵎ/ﾞʻ;Lᴵˋ/ⁱˊ;Landroidx/work/impl/WorkDatabase;)V

    iget-object p1, p0, Lـʾ/ﾞᴵ;->ʾˋ:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
