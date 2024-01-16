<!-- partial -->
<div class="container-fluid page-body-wrapper">
    <!-- partial:partials/_settings-panel.html -->
    {{-- <div class="theme-setting-wrapper">
      <div id="settings-trigger"><i class="ti-settings"></i></div>
      <div id="theme-settings" class="settings-panel">
        <i class="settings-close ti-close"></i>
        <p class="settings-heading">SIDEBAR SKINS</p>
        <div class="sidebar-bg-options selected" id="sidebar-light-theme"><div class="img-ss rounded-circle bg-light border me-3"></div>Light</div>
        <div class="sidebar-bg-options" id="sidebar-dark-theme"><div class="img-ss rounded-circle bg-dark border me-3"></div>Dark</div>
        <p class="settings-heading mt-2">HEADER SKINS</p>
        <div class="color-tiles mx-0 px-4">
          <div class="tiles success"></div>
          <div class="tiles warning"></div>
          <div class="tiles danger"></div>
          <div class="tiles info"></div>
          <div class="tiles dark"></div>
          <div class="tiles default"></div>
        </div>
      </div>
    </div> --}}

    {{-- <div id="right-sidebar" class="settings-panel">
      <i class="settings-close ti-close"></i>
      <ul class="nav nav-tabs border-top" id="setting-panel" role="tablist">
        <li class="nav-item">
          <a class="nav-link active" id="todo-tab" data-bs-toggle="tab" href="#todo-section" role="tab" aria-controls="todo-section" aria-expanded="true">TO DO LIST</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="chats-tab" data-bs-toggle="tab" href="#chats-section" role="tab" aria-controls="chats-section">CHATS</a>
        </li>
      </ul>
      <div class="tab-content" id="setting-content">
        <div class="tab-pane fade show active scroll-wrapper" id="todo-section" role="tabpanel" aria-labelledby="todo-section">
          <div class="add-items d-flex px-3 mb-0">
            <form class="form w-100">
              <div class="form-group d-flex">
                <input type="text" class="form-control todo-list-input" placeholder="Add To-do">
                <button type="submit" class="add btn btn-primary todo-list-add-btn" id="add-task">Add</button>
              </div>
            </form>
          </div>
          <div class="list-wrapper px-3">
            <ul class="d-flex flex-column-reverse todo-list">
              <li>
                <div class="form-check">
                  <label class="form-check-label">
                    <input class="checkbox" type="checkbox">
                    Team review meeting at 3.00 PM
                  </label>
                </div>
                <i class="remove ti-close"></i>
              </li>
              <li>
                <div class="form-check">
                  <label class="form-check-label">
                    <input class="checkbox" type="checkbox">
                    Prepare for presentation
                  </label>
                </div>
                <i class="remove ti-close"></i>
              </li>
              <li>
                <div class="form-check">
                  <label class="form-check-label">
                    <input class="checkbox" type="checkbox">
                    Resolve all the low priority tickets due today
                  </label>
                </div>
                <i class="remove ti-close"></i>
              </li>
              <li class="completed">
                <div class="form-check">
                  <label class="form-check-label">
                    <input class="checkbox" type="checkbox" checked>
                    Schedule meeting for next week
                  </label>
                </div>
                <i class="remove ti-close"></i>
              </li>
              <li class="completed">
                <div class="form-check">
                  <label class="form-check-label">
                    <input class="checkbox" type="checkbox" checked>
                    Project review
                  </label>
                </div>
                <i class="remove ti-close"></i>
              </li>
            </ul>
          </div>
          <h4 class="px-3 text-muted mt-5 fw-light mb-0">Events</h4>
          <div class="events pt-4 px-3">
            <div class="wrapper d-flex mb-2">
              <i class="ti-control-record text-primary me-2"></i>
              <span>Feb 11 2018</span>
            </div>
            <p class="mb-0 font-weight-thin text-gray">Creating component page build a js</p>
            <p class="text-gray mb-0">The total number of sessions</p>
          </div>
          <div class="events pt-4 px-3">
            <div class="wrapper d-flex mb-2">
              <i class="ti-control-record text-primary me-2"></i>
              <span>Feb 7 2018</span>
            </div>
            <p class="mb-0 font-weight-thin text-gray">Meeting with Alisa</p>
            <p class="text-gray mb-0 ">Call Sarah Graves</p>
          </div>
        </div>
        <!-- To do section tab ends -->
        <div class="tab-pane fade" id="chats-section" role="tabpanel" aria-labelledby="chats-section">
          <div class="d-flex align-items-center justify-content-between border-bottom">
            <p class="settings-heading border-top-0 mb-3 pl-3 pt-0 border-bottom-0 pb-0">Friends</p>
            <small class="settings-heading border-top-0 mb-3 pt-0 border-bottom-0 pb-0 pr-3 fw-normal">See All</small>
          </div>
          <ul class="chat-list">
            <li class="list active">
              <div class="profile"><img src="images/faces/face1.jpg" alt="image"><span class="online"></span></div>
              <div class="info">
                <p>Thomas Douglas</p>
                <p>Available</p>
              </div>
              <small class="text-muted my-auto">19 min</small>
            </li>
            <li class="list">
              <div class="profile"><img src="images/faces/face2.jpg" alt="image"><span class="offline"></span></div>
              <div class="info">
                <div class="wrapper d-flex">
                  <p>Catherine</p>
                </div>
                <p>Away</p>
              </div>
              <div class="badge badge-success badge-pill my-auto mx-2">4</div>
              <small class="text-muted my-auto">23 min</small>
            </li>
            <li class="list">
              <div class="profile"><img src="images/faces/face3.jpg" alt="image"><span class="online"></span></div>
              <div class="info">
                <p>Daniel Russell</p>
                <p>Available</p>
              </div>
              <small class="text-muted my-auto">14 min</small>
            </li>
            <li class="list">
              <div class="profile"><img src="images/faces/face4.jpg" alt="image"><span class="offline"></span></div>
              <div class="info">
                <p>James Richardson</p>
                <p>Away</p>
              </div>
              <small class="text-muted my-auto">2 min</small>
            </li>
            <li class="list">
              <div class="profile"><img src="images/faces/face5.jpg" alt="image"><span class="online"></span></div>
              <div class="info">
                <p>Madeline Kennedy</p>
                <p>Available</p>
              </div>
              <small class="text-muted my-auto">5 min</small>
            </li>
            <li class="list">
              <div class="profile"><img src="images/faces/face6.jpg" alt="image"><span class="online"></span></div>
              <div class="info">
                <p>Sarah Graves</p>
                <p>Available</p>
              </div>
              <small class="text-muted my-auto">47 min</small>
            </li>
          </ul>
        </div>
        <!-- chat tab ends -->
      </div>
    </div> --}}
    <!-- partial -->
    <!-- partial:partials/_sidebar.html -->
    <nav class="sidebar sidebar-offcanvas" id="sidebar">
      <ul class="nav">
        <li class="nav-item">
          @if (Auth::user()->id_role === 1)
          <a class="nav-link" href="/vendor/approved">
          @else
          <a class="nav-link" href="/vendor/approved">
          @endif
            <i class="mdi mdi-grid-large menu-icon"></i>
            <span class="menu-title">Dashboard</span>
          </a>
        </li>
        @if (Auth::user()->id_role === 1)
        <li class="nav-item nav-category">Approval Vendors</li>
        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#izinUserSubMenu" aria-expanded="false" aria-controls="izinUserSubMenu">
            <i class="menu-icon mdi mdi-floor-plan"></i>
            <span class="menu-title">Izin Vendors</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse" id="izinUserSubMenu">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="/vendor/approved">Tambah User</a></li>
              <li class="nav-item"> <a class="nav-link" href="/vendor/list">Daftar Vendors</a></li>
            </ul>
          </div>
        </li>

        @elseif (Auth::user()->id_role === 2)
        <li class="nav-item nav-category">Pengadaan Barang</li>
        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
            <i class="menu-icon mdi mdi-floor-plan"></i>
            <span class="menu-title">Pengadaan</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse" id="ui-basic">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="/pengadaan">Pengadaan</a></li>
              {{-- <li class="nav-item"> <a class="nav-link" href="/pengadaan_scm">Pengajuan</a></li> --}}
              {{-- <li class="nav-item"> <a class="nav-link" href="/status_pengadaan_scm">Status</a></li> --}}
              {{-- <li class="nav-item"> <a class="nav-link" href="/status-pengadaan">History</a></li> --}}
            </ul>
          </div>
        </li>
        {{-- <li class="nav-item nav-category">Cash Advance</li>
        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#cashAdvanceSubMenu" aria-expanded="false" aria-controls="cashAdvanceSubMenu">
            <i class="menu-icon mdi mdi-floor-plan"></i>
            <span class="menu-title">Cash Advance</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse" id="cashAdvanceSubMenu">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="/pengadaan">Pengadaan</a></li>
              <li class="nav-item"> <a class="nav-link" href="/pengadaan_scm">Pengajuan</a></li>
              <li class="nav-item"> <a class="nav-link" href="/status_pengadaan_scm">Status</a></li>
              <li class="nav-item"> <a class="nav-link" href="/status-pengadaan">History</a></li>
            </ul>
          </div>
        </li> --}}

        <li class="nav-item nav-category">Signatures</li>
        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#cashAdvanceSubMenu" aria-expanded="false" aria-controls="cashAdvanceSubMenu">
            <i class="menu-icon mdi mdi-floor-plan"></i>
            <span class="menu-title">Signatures</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse" id="cashAdvanceSubMenu">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="/tanda_tangan/create">Upload Tanda Tangan</a></li>
              <li class="nav-item"> <a class="nav-link" href="/tanda_tangan/edit">Edit Tanda Tangan</a></li>
            </ul>
          </div>
        </li>

        @elseif (Auth::user()->id_role === 3)
        <li class="nav-item nav-category">Pengadaan Barang</li>
        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
            <i class="menu-icon mdi mdi-floor-plan"></i>
            <span class="menu-title">Pengadaan</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse" id="ui-basic">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="/pengadaan/rendan">Pengadaan Barang Rendan</a></li>
              {{-- <li class="nav-item"> <a class="nav-link" href="/pengadaan_scm">Pengajuan</a></li> --}}
              {{-- <li class="nav-item"> <a class="nav-link" href="/status_pengadaan_scm">Status</a></li> --}}
              {{-- <li class="nav-item"> <a class="nav-link" href="/status-pengadaan">History</a></li> --}}
            </ul>
          </div>
        </li>
        {{-- <li class="nav-item nav-category">Cash Advance</li>
        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#cashAdvanceSubMenu" aria-expanded="false" aria-controls="cashAdvanceSubMenu">
            <i class="menu-icon mdi mdi-floor-plan"></i>
            <span class="menu-title">Cash Advance</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse" id="cashAdvanceSubMenu">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="/pengadaan/rendan">Pengadaan Barang Dari Rendan</a></li>
              <li class="nav-item"> <a class="nav-link" href="/pengadaan_scm">Pengajuan</a></li>
              <li class="nav-item"> <a class="nav-link" href="/status_pengadaan_scm">Status</a></li>
              <li class="nav-item"> <a class="nav-link" href="/status-pengadaan">History</a></li>
            </ul>
          </div>
        </li> --}}

        <li class="nav-item nav-category">Signatures</li>
        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#cashAdvanceSubMenu" aria-expanded="false" aria-controls="cashAdvanceSubMenu">
            <i class="menu-icon mdi mdi-floor-plan"></i>
            <span class="menu-title">Signatures</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse" id="cashAdvanceSubMenu">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="/tanda_tangan/create">Upload Tanda Tangan</a></li>
              <li class="nav-item"> <a class="nav-link" href="/tanda_tangan/edit">Edit Tanda Tangan</a></li>
            </ul>
          </div>
        </li>

        @elseif (Auth::user()->id_role === 4)
        <li class="nav-item nav-category">Pengadaan Barang</li>
        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
            <i class="menu-icon mdi mdi-floor-plan"></i>
            <span class="menu-title">Pengadaan</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse" id="ui-basic">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="/pengadaan">Pengadaan</a></li>
              {{-- <li class="nav-item"> <a class="nav-link" href="/pengadaan_scm">Pengajuan</a></li> --}}
              {{-- <li class="nav-item"> <a class="nav-link" href="/status_pengadaan_scm">Status</a></li> --}}
              {{-- <li class="nav-item"> <a class="nav-link" href="/status-pengadaan">History</a></li> --}}
            </ul>
          </div>
        </li>
        {{-- <li class="nav-item nav-category">Cash Advance</li>
        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#cashAdvanceSubMenu" aria-expanded="false" aria-controls="cashAdvanceSubMenu">
            <i class="menu-icon mdi mdi-floor-plan"></i>
            <span class="menu-title">Cash Advance</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse" id="cashAdvanceSubMenu">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="/pengadaan">Pengadaan</a></li>
              <li class="nav-item"> <a class="nav-link" href="/pengadaan_scm">Pengajuan</a></li>
              <li class="nav-item"> <a class="nav-link" href="/status_pengadaan_scm">Status</a></li>
              <li class="nav-item"> <a class="nav-link" href="/status-pengadaan">History</a></li>
            </ul>
          </div>
        </li> --}}

        <li class="nav-item nav-category">Signatures</li>
        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#cashAdvanceSubMenu" aria-expanded="false" aria-controls="cashAdvanceSubMenu">
            <i class="menu-icon mdi mdi-floor-plan"></i>
            <span class="menu-title">Signatures</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse" id="cashAdvanceSubMenu">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="/tanda_tangan/create">Upload Tanda Tangan</a></li>
              <li class="nav-item"> <a class="nav-link" href="/tanda_tangan/edit">Edit Tanda Tangan</a></li>
            </ul>
          </div>
        </li>

        @elseif (Auth::user()->id_role === 5)
        <li class="nav-item nav-category">Pengadaan Barang</li>
        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
            <i class="menu-icon mdi mdi-floor-plan"></i>
            <span class="menu-title">Pengadaan</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse" id="ui-basic">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="/persetujuan/pengadaan">Persetujuan Pengadaan</a></li>
              {{-- <li class="nav-item"> <a class="nav-link" href="/status_pengadaan_scm">Status</a></li> --}}
              {{-- <li class="nav-item"> <a class="nav-link" href="/status-pengadaan">History</a></li> --}}
            </ul>
          </div>
        </li>

        {{-- <li class="nav-item nav-category">Cash Advance</li>
        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#cashAdvanceSubMenu" aria-expanded="false" aria-controls="cashAdvanceSubMenu">
            <i class="menu-icon mdi mdi-floor-plan"></i>
            <span class="menu-title">Cash Advance</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse" id="cashAdvanceSubMenu">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="/pengadaan">Pengadaan</a></li>
              <li class="nav-item"> <a class="nav-link" href="/pengadaan_scm">Pengajuan</a></li>
              <li class="nav-item"> <a class="nav-link" href="/status_pengadaan_scm">Status</a></li>
              <li class="nav-item"> <a class="nav-link" href="/status-pengadaan">History</a></li>
            </ul>
          </div>
        </li> --}}

        <li class="nav-item nav-category">Signatures</li>
        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#cashAdvanceSubMenu" aria-expanded="false" aria-controls="cashAdvanceSubMenu">
            <i class="menu-icon mdi mdi-floor-plan"></i>
            <span class="menu-title">Signatures</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse" id="cashAdvanceSubMenu">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="/tanda_tangan/create">Upload Tanda Tangan</a></li>
              <li class="nav-item"> <a class="nav-link" href="/tanda_tangan/edit">Edit Tanda Tangan</a></li>
            </ul>
          </div>
        </li>

        @elseif (Auth::user()->id_role === 6)
        <li class="nav-item nav-category">Pengadaan Barang</li>
        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
            <i class="menu-icon mdi mdi-floor-plan"></i>
            <span class="menu-title">Pengadaan</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse" id="ui-basic">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="/persetujuan/pengadaan/rendan">Persetujuan Pengadaan</a></li>
              {{-- <li class="nav-item"> <a class="nav-link" href="/pengadaan_scm">Pengajuan</a></li> --}}
              {{-- <li class="nav-item"> <a class="nav-link" href="/status_pengadaan_scm">Status</a></li> --}}
              {{-- <li class="nav-item"> <a class="nav-link" href="/status-pengadaan">History</a></li> --}}
            </ul>
          </div>
        </li>
        {{-- <li class="nav-item nav-category">Cash Advance</li>
        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#cashAdvanceSubMenu" aria-expanded="false" aria-controls="cashAdvanceSubMenu">
            <i class="menu-icon mdi mdi-floor-plan"></i>
            <span class="menu-title">Cash Advance</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse" id="cashAdvanceSubMenu">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="/pengadaan">Pengadaan</a></li>
              <li class="nav-item"> <a class="nav-link" href="/pengadaan_scm">Pengajuan</a></li>
              <li class="nav-item"> <a class="nav-link" href="/status_pengadaan_scm">Status</a></li>
              <li class="nav-item"> <a class="nav-link" href="/status-pengadaan">History</a></li>
            </ul>
          </div>
        </li> --}}

        <li class="nav-item nav-category">Signatures</li>
        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#cashAdvanceSubMenu" aria-expanded="false" aria-controls="cashAdvanceSubMenu">
            <i class="menu-icon mdi mdi-floor-plan"></i>
            <span class="menu-title">Signatures</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse" id="cashAdvanceSubMenu">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="/tanda_tangan/create">Upload Tanda Tangan</a></li>
              <li class="nav-item"> <a class="nav-link" href="/tanda_tangan/edit">Edit Tanda Tangan</a></li>
            </ul>
          </div>
        </li>

        @elseif (Auth::user()->id_role === 7)
        <li class="nav-item nav-category">Pengadaan Barang</li>
        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
            <i class="menu-icon mdi mdi-floor-plan"></i>
            <span class="menu-title">Pengadaan</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse" id="ui-basic">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="/approve-vendor">Approve Vendor</a></li>
              {{-- <li class="nav-item"> <a class="nav-link" href="/pengadaan">Pengadaan</a></li> --}}
              {{-- <li class="nav-item"> <a class="nav-link" href="/pengadaan_scm">Pengajuan</a></li> --}}
              {{-- <li class="nav-item"> <a class="nav-link" href="/status_pengadaan_scm">Status</a></li> --}}
              {{-- <li class="nav-item"> <a class="nav-link" href="/status-pengadaan">History</a></li> --}}
              @if(isset($vendor))
    <!-- Tautan yang berkaitan dengan vendor -->
    <a href="{{ route('approve.vendor', $vendor->vendor_id) }}">Approve Vendor</a>
    <!-- Tambahan tautan atau informasi lainnya yang berhubungan dengan vendor -->
@endif
            </ul>
          </div>
        </li>
        {{-- <li class="nav-item nav-category">Cash Advance</li>
        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#cashAdvanceSubMenu" aria-expanded="false" aria-controls="cashAdvanceSubMenu">
            <i class="menu-icon mdi mdi-floor-plan"></i>
            <span class="menu-title">Cash Advance</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse" id="cashAdvanceSubMenu">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="/pengadaan">Pengadaan</a></li>
              <li class="nav-item"> <a class="nav-link" href="/pengadaan_scm">Pengajuan</a></li>
              <li class="nav-item"> <a class="nav-link" href="/status_pengadaan_scm">Status</a></li>
              <li class="nav-item"> <a class="nav-link" href="/status-pengadaan">History</a></li>
            </ul>
          </div>
        </li> --}}
        @endif

        @if (Auth::user()->level === 'Admin Tim')
        <li class="nav-item nav-category">Forms and Datas</li>
        <li class="nav-item">
          <a class="nav-link" href="/signature">
            <i class="menu-icon mdi mdi-layers-outline"></i>
            <span class="menu-title">Signature</span>
          </a>
        </li>
        @elseif (Auth::user()->level === 'Admin General')
        <li class="nav-item nav-category">Forms and Datas</li>
        <li class="nav-item">
          <a class="nav-link" href="/signature">
            <i class="menu-icon mdi mdi-layers-outline"></i>
            <span class="menu-title">Signature</span>
          </a>
        </li>
        @endif

        @if (Auth::user()->level === 'Admin Tim')
          <li class="nav-item nav-category">Persetujuan</li>
          <li class="nav-item">
          <a class="nav-link" href="{{ route('admintim') }}">
            <i class="menu-icon mdi mdi-account-circle-outline"></i>
            Persetujuan</a>
        @elseif(Auth::user()->level === 'Admin General')
          <li class="nav-item nav-category">Persetujuan</li>
          <li class="nav-item">
          <a class="nav-link" href="{{ route('admingeneral') }}">
            <i class="menu-icon mdi mdi-account-circle-outline"></i>
            Persetujuan </a>
          @endif
        </li>
        {{-- <li class="nav-item nav-category">help</li>
        <li class="nav-item">
          <a class="nav-link" href="http://bootstrapdash.com/demo/star-admin2-free/docs/documentation.html">
            <i class="menu-icon mdi mdi-file-document"></i>
            <span class="menu-title">Documentation</span>
          </a>
        </li> --}}
      </ul>
    </nav>

<script>
    document.addEventListener("DOMContentLoaded", function() {
      
      const izinUserCategory = document.getElementById("izinUserCategory");
      const pengadaanCategory = document.getElementById("pengadaanCategory");
      const cashAdvanceCategory = document.getElementById("cashAdvanceCategory");
    
      
      // const izinUserButton = document.getElementById("izinUserButton");
      // const pengadaanButton = document.getElementById("pengadaanButton");
      // const cashAdvanceCategory = document.getElementById("cashAdvanceCategory");
    
     
      izinUserButton.addEventListener("click", function() {
        
        if (!pengadaanCategory.classList.contains("collapse")) {
          pengadaanButton.click();
        }
        if (!cashAdvanceCategory.classList.contains("collapse")) {
          cashAdvanceCategory.click();
        }
      });
    
      
      pengadaanButton.addEventListener("click", function() {
       
        if (!izinUserCategory.classList.contains("collapse")) {
          izinUserButton.click();
        }
        if (!cashAdvanceCategory.classList.contains("collapse")) {
          cashAdvanceCategory.click();
        }
      });

      cashAdvanceButton.addEventListener("click", function() {
    
    if (!izinUserCategory.classList.contains("collapse")) {
      izinUserButton.click();
    }
    if (!pengadaanCategory.classList.contains("collapse")) {
      pengadaanButton.click();
    }
  });
    });
  </script>