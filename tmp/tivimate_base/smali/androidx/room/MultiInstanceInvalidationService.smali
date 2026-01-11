.class public final Landroidx/room/MultiInstanceInvalidationService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field public final ʽʽ:Lʼﾞ/יـ;

.field public ʾˋ:I

.field public final ˈٴ:Lʼﾞ/ﹳᐧ;

.field public final ᴵˊ:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->ᴵˊ:Ljava/util/LinkedHashMap;

    new-instance v0, Lʼﾞ/יـ;

    invoke-direct {v0, p0}, Lʼﾞ/יـ;-><init>(Landroidx/room/MultiInstanceInvalidationService;)V

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->ʽʽ:Lʼﾞ/יـ;

    new-instance v0, Lʼﾞ/ﹳᐧ;

    invoke-direct {v0, p0}, Lʼﾞ/ﹳᐧ;-><init>(Landroidx/room/MultiInstanceInvalidationService;)V

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->ˈٴ:Lʼﾞ/ﹳᐧ;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Landroidx/room/MultiInstanceInvalidationService;->ˈٴ:Lʼﾞ/ﹳᐧ;

    return-object p1
.end method
