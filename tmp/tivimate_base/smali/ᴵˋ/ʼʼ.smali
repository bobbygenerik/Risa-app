.class public final synthetic Lᴵˋ/ʼʼ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʽﹳ/ʼˎ;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/String;

.field public final synthetic ʾˋ:Ljava/util/concurrent/Executor;

.field public final synthetic ˈٴ:Lᴵⁱ/ﹳٴ;

.field public final synthetic ᴵˊ:Lᴵˋ/ˆʾ;

.field public final synthetic ᴵᵔ:Landroidx/lifecycle/ˊʻ;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lᴵˋ/ˆʾ;Ljava/lang/String;Lᴵⁱ/ﹳٴ;Landroidx/lifecycle/ˊʻ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᴵˋ/ʼʼ;->ʾˋ:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lᴵˋ/ʼʼ;->ᴵˊ:Lᴵˋ/ˆʾ;

    iput-object p3, p0, Lᴵˋ/ʼʼ;->ʽʽ:Ljava/lang/String;

    iput-object p4, p0, Lᴵˋ/ʼʼ;->ˈٴ:Lᴵⁱ/ﹳٴ;

    iput-object p5, p0, Lᴵˋ/ʼʼ;->ᴵᵔ:Landroidx/lifecycle/ˊʻ;

    return-void
.end method


# virtual methods
.method public final ʼˎ(Lʽﹳ/ᵔᵢ;)Ljava/lang/Object;
    .locals 6

    new-instance v0, Lᴵˋ/ᵢˏ;

    iget-object v1, p0, Lᴵˋ/ʼʼ;->ᴵˊ:Lᴵˋ/ˆʾ;

    iget-object v2, p0, Lᴵˋ/ʼʼ;->ʽʽ:Ljava/lang/String;

    iget-object v3, p0, Lᴵˋ/ʼʼ;->ˈٴ:Lᴵⁱ/ﹳٴ;

    iget-object v4, p0, Lᴵˋ/ʼʼ;->ᴵᵔ:Landroidx/lifecycle/ˊʻ;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lᴵˋ/ᵢˏ;-><init>(Lᴵˋ/ˆʾ;Ljava/lang/String;Lᴵⁱ/ﹳٴ;Landroidx/lifecycle/ˊʻ;Lʽﹳ/ᵔᵢ;)V

    iget-object p1, p0, Lᴵˋ/ʼʼ;->ʾˋ:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1
.end method
